require "yaml"

module GuitarChords
  # |-1-|---|---|---|---|---|
  # |---|-2-|---|---|---|---|
  # |---|---|---|---|---|---|
  # |---|-3-|---|---|---|---|
  # |---|---|---|-4-|---|---|
  # row is string, column is fret
  class Chord
    Fret_count = 5
    String_count = 6
    attr_accessor :name, :chord_info

    def initialize(name="", chord_info={})  
      @name = name
      @chord_info = chord_info
    end 

    def to_s
      str = " "*4*(Fret_count/2)+@name+"\n"
      String_count.times do |s|
        line = "|"
        if @chord_info.keys.include? s+1
          Fret_count.times do |f|
            if @chord_info[s+1].keys.include? f+1
              line += "-#{@chord_info[s+1][f+1]}-|" 
            else
              line += '---|'
            end
          end
        else
          line += '---|' * Fret_count
        end
        str = str + line + "\n"
      end
      str
    end

  end
end

