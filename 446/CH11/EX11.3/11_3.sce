clear
clc
disp('Ex-11.3(a)');
Na=6.023*10^23; p=8.96*10^3; M=63.5*10^-3;   //Na=avagadro's number,p=density,M=molar mass
n= p*Na/M;                                   //density of charge carriers
printf('The density of charge carriers in copper is %e atoms/m3\n',n);
s=5.88*10^7;m=9.11*10^-31;e=1.6*10^-19;    //charge & mass of an electron,resistance per unit length
t= s*m/(n*e^2);                            //average time between collisions
printf('The average time between collisions of conducting electrons is %e sec.\n',t);
disp('Ex-11.3(b)');
Ef=7.03*1.6*10^-19;           //converting given enrgy to J
Vf=sqrt(2*Ef/m);               //fermi velocity
l=Vf*t;                      //mean free path
printf('The average mean free path is %e m = %.1f nm',l,l*10^9);
