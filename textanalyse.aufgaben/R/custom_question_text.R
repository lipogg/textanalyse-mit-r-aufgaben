#' Custom Free Text Question
#'
#' A custom version of learnr's `question_text()` that normalizes user input and checks it against a vector of accepted correct answers.
#'
#' @param text Question text
#' @param variants Accepted correct answers
#' @param correct_msg Message shown when the answer is correct
#' @param incorrect_msg Message shown when the answer is incorrect
#' @param allow_retry Should the user be allowed to retry?
#' @param placeholder Placeholder text in the input field
#'
#' @return A learnr question object of type "learnr_text"
#' @export
custom_question_text <- function(text,
                                 variants,
                                 correct_msg = "Super, das ist richtig!",
                                 incorrect_msg = "Leider nicht richtig.",
                                 allow_retry = FALSE,
                                 placeholder = "Antwort eingeben...") {

  check_answer <- function(value, variants) {

    normalized_value <- tolower(value) |>
      trimws() |>
      gsub("[[:punct:]]+", "", x = _)

    if (normalized_value %in% tolower(variants)) {
      return(mark_as(TRUE))
    }
    return(mark_as(FALSE))
  }

  # Fix scoping issue: https://github.com/rstudio/learnr/discussions/797
  formals(check_answer)$variants <- variants

  question_text(
    text,
    answer_fn(check_answer),
    correct = correct_msg,
    incorrect = incorrect_msg,
    allow_retry = allow_retry,
    placeholder = placeholder
  )
}
