//Example_a_6_3 page no:234
clc;
R=0.5;
P=200;
pf=0.707;
V=25/sqrt(2);//in V
I=(200/pf)*(sqrt(2)/25);
Ztmag=V/I;
Ztang=25-(-20);
Ztreal=Ztmag*cosd(Ztang);
Ztimag=Ztmag*sind(Ztang);
Zt=Ztreal+(Ztimag*%i);
Z=Zt-R;
disp(Z,"the impedence is (in ohm)");
apparent_power=V*I;
disp(apparent_power,"the apparent power is (in VA)");
