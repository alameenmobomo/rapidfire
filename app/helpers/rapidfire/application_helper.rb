module Rapidfire
  module ApplicationHelper
    def render_answer_form_helper(answer, form, counter)
      partial = answer.question.type.to_s.split("::").last.downcase
      render partial: "rapidfire/answers/#{partial}", locals: { f: form, answer: answer, counter: counter }
    end

    def checkbox_checked?(answer, option)
      answer.answer_text.to_s.split(",").include?(option)
    end
  end
end
