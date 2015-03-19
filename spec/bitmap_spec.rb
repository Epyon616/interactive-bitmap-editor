require_relative "../lib/bitmap"

describe "Bitmap" do
  let(:cols) { 2 }
  let(:rows) { 2 }
  subject { Bitmap.new(cols, rows) }

  describe ".intialize" do
    it { expect(subject.cols).to eql(2) }
    it { expect(subject.rows).to eql(2) }
  end

  describe "#clear" do
    it "sets colour back to 'O'" do
      (1..subject.cols).map do |col|
        (1..subject.rows).map do |row|
          expect(subject.get_pixel_colour(col, row)).to eql("O")
        end
      end
    end
  end

  describe "#get_pixel_colour" do
    it { expect(subject.get_pixel_colour(1,1)).to eql("O") }
  end

  describe "#set_pixel_colour" do
    before { subject.set_pixel_colour(2, 2, "C") }
    it { expect(subject.get_pixel_colour(2,2)).to eql("C") }
  end

  describe "Draw a vertical segment of colour 'C' in column 'X' between rows 'Y1' and 'Y2'" do
    pending
  end

  describe "Draw a horizontal segment of colour 'C' in row 'Y' between columns 'X1' and 'X2'" do
    pending
  end
end
