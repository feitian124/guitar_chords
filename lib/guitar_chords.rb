require "guitar_chords/chord"
require "guitar_chords/version"

module GuitarChords
  def self.all
    lines = YAML.load_file(File.dirname(__FILE__)+"/guitar_chords/chords.yml")
    chords = [] 
    lines.each do |k,v|
      chords << Chord.new(k,v)
    end  
    chords
  end

  def self.show(chord)
    chords = GuitarChords.all
    chords.each do |c|
      if c.name == chord
        puts c
        break
      end
    end
  end
end
