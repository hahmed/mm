class InvoicePdf < Prawn::Document

  def initialize(view)
    super()
    @view = view
    text "This is an order invoice"
  end
end
