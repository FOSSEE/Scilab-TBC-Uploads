clc;
// page no 34
// prob no 1_10_1
//From the ckt of fig. 1.10.1(a)
C1=70*10^-12
C2=150*10^-12
Rl=200
Q=150
f=27*10^6
r=40000
//Determination of common resonant freq
wo=2*3.14*f;
disp('Mrad/sec',wo/(10^6),+'The value of common resonant freq is');
//Determination of Gl
Gl=1/Rl;
disp('mSec',Gl*(10^3),+'The value of Gl is');
//Checking the approxiamtion in denominator
ap=((wo*(C1+C2))/(Gl))^2
alpha=(C1+C2)/C1;
disp(alpha,'The value of alpha is ')
//Determination of effective load
Reff=((alpha)^2)*Rl;
disp('kohm',Reff/(10^3),+'The value of effective load is');
//If effective load is much less than internal resistance hence tuning capacitance then
Cs=C1*C2/(C1+C2);
disp('pF',Cs*(10^12),+'The value of tuning capacitance is');       
//Determination of Rd
Rd=Q/(wo*Cs);
disp('kohm',Rd/(10^3),+'The value of Rd is'); 
//If Rd is much greater than Reff then -3dB bandwidth is given by
B=1/(2*3.14*C2*alpha*Rl);
disp('MHz',B/(10^6),+'The value of -3dB BW is');