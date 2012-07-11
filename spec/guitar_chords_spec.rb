require 'spec_helper'

describe GuitarChord do
  it 'should be able to new' do
    GuitarChord.new.should_not be_nil
  end

  it 'should be with attr_accessor' do
    gc = GuitarChord.new
    gc.name="name"
    gc.chord_info=[]
    "name".should eql(gc.name)
    [].should eql(gc.chord_info)
  end
end

describe GuitarChords do
  it 'should return all chords when call all' do
    GuitarChords.all.size.should be >= 1
  end
end
