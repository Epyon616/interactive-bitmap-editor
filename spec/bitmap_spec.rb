require_relative "../lib/bitmap"

describe "Bitmap" do
  let(:cols) { 2 }
  let(:rows) { 2 }
  subject { Bitmap.new(cols, rows) }

  describe ".intialize" do
    it { expect(subject.cols).to eql(2) }
    it { expect(subject.rows).to eql(2) }
  end
end
