clc;
//Ex3.1
R=1000;
sigma=5.8*10**7;
d=0.001;
//l is length of the cu wire
l=R*sigma*%pi*(d*d/4);//R=l/(sigma*%pi*(d*d/4))
disp ('km',l*10**-3,"l=");
E=10*10**-3;
J=sigma*E;//current density
disp('A/m^2',J*1,"J=");
