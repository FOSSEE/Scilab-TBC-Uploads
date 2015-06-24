//Chapter 26
clc
//Example4
//given
c=3*10^8 //velocity of light in m/sec
//when the spaceship is at rest
x=52 // diatance in x direction  in meters
y=25 //measurement in y direction
v=0.95*c
//when the spaceship moves to an observer at rest only x dimension looks contracted
gamma=1/sqrt(1-(v^2/c^2))
L=x/gamma
disp(L,"The observer sees the horizontal dimension of the spaceship gets contracted to a length in meters of")


