clc;
z=50;  //impedance in Ohm
l=10;  //length in metre
v=10;  //voltage in volt
t=0.3*10^-6;  //time in sec
i=v/z;  //calaulating current
disp(i,"Current on initial wave in Ampere = ");  //displaying result
disp("It takes 0.13*10^-6 for a round trip.There are two round trips in 0.3*10^-6. The current triples for each round trip. At 0.3 ¹s the current is multiplied by 6, or 1.2 A.");  //displaying result