use_bpm 94
define :halen do |l, m, n, o, p|
  play l
  sleep 1/4.0
  play m
  sleep 1/4.0
  play n
  sleep 1/4.0
  play o
  sleep 1/4.0
  play p
  sleep 1/4.0
end

live_loop :yearg do
  14.times do
    with_fx :reverb do
      with_fx :reverb do
        halen :a4, :d4, :g4, :d4, :f4
        halen :a4, :d4, :g4, :c5, :d4
        halen :d5, :d4, :a4, :c5, :g4
      end
    end
  end
  stop
end

sleep 16

define :pizza do |q, r, s, t, u|
  play q, amp: 10, sustain: t, sustain_level: u
  play r, amp: 10, sustain: t, sustain_level: u
  play s, amp: 10, sustain: t, sustain_level: u
end

2.times do
  use_synth :pluck
  with_fx :tremolo do
    with_fx :compressor do
      with_fx :reverb do
        pizza :bb2, :f2, :bb1, 7, 4
      end
    end
  end
  sample :drum_splash_soft, amp: 0.4
  sleep 2
  n=0.2
  6.times do
    sample :drum_bass_soft, amp: n
    sleep 1.0
    n=n+0.2
  end
  with_fx :tremolo do
    with_fx :compressor do
      with_fx :reverb do
        pizza :d3, :a2, :d2, 7, 4
      end
    end
  end
  sample :drum_splash_soft
  sleep 2
  n=0.2
  6.times do
    sample :drum_bass_soft, amp: n
    sleep 1.0
    n=n+0.2
  end
end

with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      pizza :bb2, :f2, :bb1, 4, 4
    end
  end
end
sample :drum_splash_soft
sleep 2
n=0.2
2.times do
  sample :drum_bass_soft, amp: n
  sleep 1.0
  n=n+0.2
end

with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      pizza :c3, :g2, :c2, 3, 4
    end
  end
end

define :alfredo do |v, w, x|
  play v, amp: 10
  play w, amp: 10
  play x, amp: 10
end

sleep 3
use_synth :pluck
with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      alfredo :c3, :g2, :c2
      sleep 1/4.0
      alfredo :c3, :g2, :c2
      sleep 1/4.0
      alfredo :d3, :a2, :d2
    end
  end
end
