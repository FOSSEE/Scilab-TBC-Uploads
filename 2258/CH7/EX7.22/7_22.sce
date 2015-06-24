clc();
clear;
// To calculate the forbidden energy gap
T=300;   //temp in K
kB=1.38*10^-23;
mew_e=0.36;    //mobility of electrons in m^2/Vs
e=1.6*10^-19;
mew_h=0.7;    //mobility of electrons in m^2/Vs
sigma=2.12;    //conductivity in ohm-1 m-1
C=4.83*10^21;    //proportional constant
ni=sigma/(e*(mew_e+mew_h));
//exp(-Eg/(2*kB*T)) = (C*(T^(3/2)))/ni
//let X be (C*(T^(3/2)))/ni
X=(C*(T^(3/2)))/ni;
//exp(-Eg/(2*kB*T)) = X 
//applyinf log on both sides
//Eg/(2*kB*T) = log(X)
Eg=2*kB*T*log(X);
printf("forbidden energy gap in eV is");
disp(Eg);

//answer given in the book is wrong
