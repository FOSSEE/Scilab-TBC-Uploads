clc; clear; close;

mprintf('A)\n');
mprintf(' F=AB+C\n\n');
mprintf(' B)\n');
Cg=2;//in fF/um
Wp=16*0.05;//in um
lam=0.05;
Ceff=1;//in fF/um
Vclk=1.2;//in volts
Vdd=1.2;//in volts
Cf=Cg*Wp/2;
Cgnd=(Ceff*40*lam)+(Cg*30*lam);
delV=(Cf*Vclk/(Cf+Cgnd));
disp(delV,'DELVx(in volts)=');
Vout=Vdd+delV;
disp(Vout,'Output voltage(in volts)=');
mprintf('\nSince output voltage is above Vdd , it is not a problem\n\n');
mprintf(' C)\n');
Cy=Ceff*16*lam;
V=Cgnd*Vdd/(Cy+Cgnd);
disp(V,'Worst case charge sharing V*(in volts)=');
//answers vary due to roundoff error
