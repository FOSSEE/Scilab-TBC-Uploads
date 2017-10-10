//Example_a_7_14 page no:281
clc;
Zab=((5*(%i*10))/(5+(%i*10)))+((7*(-%i*20))/(7-(%i*20)));
I1=100/(5+(%i*10));
I2=100/(7-(%i*20));
Vamag=8.94*10;
Vaang=-63.43+90;
Vbmag=4.72*20;
Vbang=70.7-90;
Vareal=Vamag*cosd(Vaang);
Vaimag=Vamag*sind(Vaang);
Va=Vareal+(%i*Vaimag);
Vbreal=Vbmag*cosd(Vbang);
Vbimag=Vbmag*sind(Vbang);
Vb=Vbreal+(%i*Vbimag);
Vab=Va-Vb;
Vth=Vab;
Z=10.22+0.19*%i;
I=Vth/(Zab+Z);
Imag=sqrt(real(I)^2+imag(I)^2);
P=Imag^2*real(Z);
disp(P,"the maximum power delivered to the load is (in W)");
//power varies slightly due to values are rounded off in text book
