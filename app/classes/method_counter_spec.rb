require 'rspec'
require_relative 'method_counter'

describe MethodCounter do
  describe '#some_method' do
    it 'returns "something"' do
      mc = MethodCounter.new
      expect(mc.some_method).to eql(1)
      expect(mc.some_method).to eql(2)
      expect(mc.some_method).to eql(3)
      expect(mc.some_method).to eql(4)
      expect(mc.some_other_method).to eql(1)
      expect(mc.yet_another_method).to eql(1)
      expect(mc.some_method).to eql(5)
      expect(mc.some_other_method).to eql(2)
    end
  end
end
