class CustomerPdf < Prawn::Document
  def initialize(customer)
    super(page_size: 'A4')
    @customer = customer
    build_pdf
  end

  def build_pdf
    fill_color '40464e'
    text 'Relatório de Clientes', size: 18, style: :bold, align: :left
    image 'app/pdfs/RailsNote.png', at: [220, 800], width: 80

    move_down 10
    text "CIDADE, #{I18n.l(Time.now, format: '%d de %B de %Y')}.", size: 12, align: :right

    move_down 10
    table line_rows, width: 525 do
      row(0).font_style = :bold
      columns(0..3).size = 8
    end
  end

  def line_rows
    [['#', 'Nome', 'E-mail', 'Telefone']] +
      @customer.all.map do |reg|
        [reg.id, reg.name.upcase, reg.email, reg.phone]
      end
  end
end
