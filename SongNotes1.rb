use_bpm 95

live_loop :yearg do
  14.times do
    with_fx :reverb do
      use_synth :piano
      sleep 1/4.0
      play :a4
      sleep 1/4.0
      play :d4
      sleep 1/4.0
      play :g4
      sleep 1/4.0
      play :d4
      sleep 1/4.0
      play :f4
      sleep 1/4.0
      play :a4
      sleep 1/4.0
      play :d4
      sleep 1/4.0
      play :g4
      sleep 1/4.0
      play :c5
      sleep 1/4.0
      play :d4
      sleep 1/4.0
      play :d5
      sleep 1/4.0
      play :d4
      sleep 1/4.0
      play :a4
      sleep 1/4.0
      play :c5
      sleep 1/4.0
      play :g4
    end
  end
  stop
end

sleep 16

