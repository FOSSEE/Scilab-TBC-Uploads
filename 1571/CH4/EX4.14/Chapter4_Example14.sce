clc
clear

//INPUT
v1=2.4;//velocity of first particle in km/sec
v2=2.6;//velocity of second particle in km/sec
v3=3.7;//velocity of third particle in km/sec

//CALCULATIONS
rv=((v1^2+v2^2+v3^2)/(3))^(0.5);//rms velocity of the particles in km/sec
mv=(v1+v2+v3)/(3);//mean velocity of the particles in km/sec
r=rv/mv;//ratio of the rms to mean velocity

mprintf('the ratio of rms to mean velocity is %3.3f',r)
