require "guitar_chords/version"
require "guitar_chords/guitar_chord"
require "yaml"

module GuitarChords
  def all
    lines = YAML.load_file(File.dirname(__FILE__)+"/"+"guitar_chords/guitar_chords.yml")
    chords = Array.new
    lines.each do |k,v|
      chords << GuitarChord.new(k, v)
    end
    chords
  end
end
