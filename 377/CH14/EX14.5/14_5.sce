disp("VT=Vfb+(2*φb)+(sqrt(4*Єs*q*Na*φb)/cox)");
Vfb=-0.93;
a=0.42;  //say a=φb
e=11.9*8,85*10^-14;  //say e=Єs
q=1.6*10^-19;
Na=10^17;
eox=3.9*8,85*10^-14;  //say eox=Єox
dox=20*10^-7;
cox=eox/dox;
VT=Vfb+(2*a)+(sqrt(4*e*q*Na*a)/cox);
printf('\n The value of VT is %fV',VT);