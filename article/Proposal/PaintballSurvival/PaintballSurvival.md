# PaintballSurvival

## Brief

1. Player survives under attack of multiple auto paintball gun.
1. Ranking by: time of no hit, numbers of gnu, AI of gnu.
1. Multiple slow motion camera to make bullet-time video for player.
1. Another class by holding sword (or pan:)

## Detail

### Paintball Gun

#### AI (Algorithm)

Params:

- Interval of shooting
- Prediction on/off
- Moving or not
- Level of random of params

AI should only aim/shoot the people inside the area, it can be done by algorithm or deep learning.  
Alternative in the begin, if the area can be clean (no other moving object except player be detected), image substraction is enough.  

#### Hardware

Params:

- Moving speed
- Aim speed
- Minimal distance to player
