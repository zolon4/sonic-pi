
use_synth :hollow

with_fx :reverb, mix: 0.7 do
  
  
  live_loop :c4 do
    play choose(chord(:C4, :minor)),attack:5, release: 60, cutoff: rrand(60, 120),amp: 0.8
    sleep 1
  end
  
  live_loop :c1 do
    play choose(chord(:C1, :minor)), attack: 5,release: 60, cutoff: rrand(60, 120),amp: 0.8
    
    sleep 2
  end
  
  live_loop :b1 do
    play choose(chord(:B1, :minor)), attack: 5,release: 60, cutoff: rrand(60, 120),amp: 0.8
    
    sleep 3
  end
  
  live_loop :c3 do
    play choose(chord(:C3, :minor)), attack: 5, release: 60, cutoff: rrand(60, 120),amp: 0.8
    sleep 4
  end
  
  live_loop :sequence do
    use_synth :dark_ambience
    play choose(chord(:C5, :minor)), attack: 5, release: 60, cutoff: rrand(60, 120),amp: 0.8  if one_in(2)
    sleep 3
  end
  
  live_loop :sequence2 do
    with_fx :reverb, mix: 0.6 do
      use_synth :mod_fm
      play choose(chord(:C4, :minor)), attack: 5, release: 5, cutoff: rrand(60, 120),amp: 0.8  if one_in(5)
      sleep 2
    end
  end
  
  
end



