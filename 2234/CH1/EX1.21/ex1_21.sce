clc;
E=10^6;  //in volt/m
e=8.85*10^-12;  //constant in F/m
v=10^-5;  //volume in m cube
en=(1/2)*e*E*E*v;  //calculating energy
disp(en,"Energy in Joule = ");  //displaying result