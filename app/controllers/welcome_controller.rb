class WelcomeController < ApplicationController
  def index
  end

  def yo
    send_data(generate_pdf, :filename => "output.pdf", :type => "application/pdf", disposition: 'inline')
  end

  private
  def generate_pdf
      Prawn::Document.new do
          text "Hello Stackoverflow"
      end.render
  end
end

#https://github.com/fadhlirahim/prawn-examples/blob/master/examples/invoice.rb
