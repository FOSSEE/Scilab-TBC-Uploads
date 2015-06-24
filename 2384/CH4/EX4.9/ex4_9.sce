// Exa 4.9
clc;
clear;
close;
format('v',6)
// Given data
f= 60;// in Hz
disp("Part (a)")
Z= 12+30*%i;
R= real(Z);// in ohm
XL= imag(Z);// in ohm
// Formula XL= 2*%pi*f*L
L= XL/(2*%pi*f);// in H
L= L*10^3;// in mH
disp(R,"The value of resistance in Ω is : ")
disp(L,"The value of inductance in mH is : ")
L= L*10^-3;// in H
disp("Part (b)")
Z= 0-60*%i;
R= real(Z);// in ohm
XC= (abs(imag(Z)));// in ohm
// Formula XC= 1/(2*%pi*f*C)
C= 1/(2*%pi*XC*f);// in H
C= C*10^6;// in µF
disp(R,"The value of resistance in Ω is : ")
disp(C,"The value of inductance in µF is : ")
C= C*10^-6;// in F
disp("Part (c)")
Z= 20*expm(60*%i*%pi/180)
R= real(Z);// in ohm
XL= imag(Z);// in ohm
// Formula XL= 2*%pi*f*L
L= XL/(2*%pi*f);// in H
L= L*10^3;// in mH
disp(R,"The value of resistance in Ω is : ")
disp(L,"The value of inductance in mH is : ")
