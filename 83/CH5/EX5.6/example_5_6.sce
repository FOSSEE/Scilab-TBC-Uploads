//Chapter 5
//Example 5.6
//page 149
//to find incident and reflected voltages
clear;clc;

R=0.125;
X=0.4;
y=%i*2.8*10^(-6);
z=R+%i*X;

r=sqrt(y*z); //propogation constant
a=real(r); //attenuation constant
b=imag(r); //phase constant

//(a) At the receiving-end;
Vr=220000;
Inci_vol=Vr/(sqrt(3)*2);
Refl_vol=Vr/(sqrt(3)*2);
printf('\n\nIncident Vvoltage=%0.2f kV',Inci_vol/1000);
printf('\nReflected Vvoltage=%0.2f kV',Refl_vol/1000);

//(b) At 200km from the receiving-end
x=200;
Inci_vol=Inci_vol*exp(a*x)*exp(%i*b*x);
Refl_vol=Refl_vol*exp(-a*x)*exp(-%i*b*x);
printf('\n\nIncident voltage=%0.2f @ %0.1f deg kV',abs(Inci_vol)/1000,atand(imag(Inci_vol)/real(Inci_vol)));
printf('\nReflected voltage=%0.2f @ %0.1f deg kV',abs(Refl_vol)/1000,atand(imag(Refl_vol)/real(Refl_vol)));

//(c) Resultant voltage at 200km from the receiving-end
res=Inci_vol+Refl_vol;
printf('\n\nResultant line-to-line voltage at 200km =%0.2f kV',abs(res)*sqrt(3)/1000);



