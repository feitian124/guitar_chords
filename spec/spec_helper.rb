require 'rspec'
require 'guitar_chords/guitar_chord'
require 'guitar_chords'

include GuitarChords
RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end
