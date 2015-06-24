//Exa 7.12
clc;
clear;
close;
//given data
T1=500;// in K
T2=300;// in K
sigma=5.67*10^-8;
A=2;// surface area of each plate in m^2
//(a) If the plates are perfectly black
F12=1;
q12=sigma*A*F12*(T1^4-T2^4);
disp(q12,"Radiation heat transfer between two black parellel plates in watt");

//(b) If the plates are gray surface
//in this case
F12=1;
//A1=A2, so
A1byA2=1
epsilon1=.4;
epsilon2=epsilon1;
//Fg12=1/(1/epsilon1+(1/epsilon2-1)*A1byA2);
Fg12=1/((1-epsilon1)/epsilon1 + 1/F12 + [(1-epsilon2)/epsilon2]*A1byA2);
q12=sigma*A*Fg12*(T1^4-T2^4);// in W
disp(q12,"Heat transfer rate in watt")
