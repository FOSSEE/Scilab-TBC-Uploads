//example 6.6
clc; funcprot(0);
clf()
// Initialization of Variable
Vol=0.7;
Iol=40.0/1000;//current
Epullup=28.0;
Rpullup=(Epullup-Vol)/Iol;
disp(Rpullup,"resistance in ohm")
printf('pick up resistance=680 ohm');
Rpullup=680.0;
C=640;
trise=2.2*Rpullup*C;
disp(trise/1000,"rise time in ns");
//for plotting
x=[0 .1 1.9 4.1 5 5.1 5.3 5.6 6 9.3];
y=[27.8 .1 .1 .1 .1 5 13.5 21 27 27.8];
plot(x,y);
xtitle('Vout vs time','time(mus)','Vout')
clear()
