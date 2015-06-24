//Ex:4.13
clc;
clear;
close;
Zs=35476/710;// terminal resistance in ohm
L_D=28;// the ratio of L to D
L=0.925;// length in m in terms of wavelength y
D=L/L_D;// diameter in m in terms of wavelength y
W=2*D;// width in m in terms of wavelength y
printf("The terminal resistance = %f ohm", Zs);
printf("\n The diameter in m in terms of wavelength = %f*y meter", D);
printf("\n The width in m in terms of wavelength = %f*y meter", W);