# frozen_string_literal: true

# class TranslateController
class TranslateController < ApplicationController
  def output
    @chislo = params[:ch].to_i
    @st = @chislo.to_s(2)
    @rev_st = @st.reverse
    @result = @rev_st.to_i(2)

    respond_to do |format|
      format.xml { render xml: { chislo: @chislo, st: @st, rev_st: @rev_st, result: @result }.to_xml }
      format.rss { render xml: { chislo: @chislo, st: @st, rev_st: @rev_st, result: @result }.to_xml }
    end
  end
end
