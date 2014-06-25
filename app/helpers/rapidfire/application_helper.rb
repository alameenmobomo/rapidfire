module Rapidfire
  module ApplicationHelper
    def render_answer_form_helper(answer, form, counter, main_form)
      partial = answer.question.type.to_s.split("::").last.downcase
      render partial: "rapidfire/answers/#{partial}", locals: { f: form, answer: answer, counter: counter, main_form: main_form }
    end

    def checkbox_checked?(answer, option)
      answer.answer_text.to_s.split(",").include?(option)
    end

    def multi_input_field(answer, form)
    	if answer.question.is_select?
    		form.select :answer_text, answer.question.options, { include_blank: true }, class: 'form-control w-200'
  		else
  			form.text_field :answer_text, class: 'form-control w-200'
    	end
    end
  end
end
