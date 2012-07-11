require "yaml"

module GuitarChords

  class GuitarChord
    attr_accessor :name, :chord_info

    def initialize(name="", chord_info=[])  
      @name = name
      @chord_info = chord_info
    end 

    def to_s
      puts @name

      @chord_info.each do |chord|
        # |-1-|---|---|---|---|---|
        # |---|-3-|---|---|---|---|
        # |---|---|---|---|---|---|
        # |---|-3-|---|---|---|---|
        # |---|---|---|-4-|---|---|
        fret = chord.keys.first
        finger = chord[fret]
        line = ""

        5.times do |c|
          if fret == c
            line += "|--#{finger}--"
          else
            line += "|-----"
          end
        end
        puts line+"|"
      end
    end
  end

end
