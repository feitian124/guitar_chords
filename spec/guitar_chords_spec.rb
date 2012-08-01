require 'spec_helper'

describe Chord do
  it 'should be able to new' do
    GuitarChords::Chord.new.should_not be_nil
  end

  it 'should be with attr_accessor' do
    c = GuitarChords::Chord.new
    c.name="name"
    c.chord_info=[]
    "name".should eql(c.name)
    [].should eql(c.chord_info)
  end
end

describe GuitarChords do
  it 'should return all chords when call all' do
    GuitarChords.all.size.should be >= 1
    p GuitarChords.all
  end
end
