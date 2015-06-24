
//determine the emf induced
R=0.05;
Rs=100;
V=250;
P=10000;
I=P/V;
Is=V/Rs;
Ia=I+Is;
Eg=V+(R*Ia);
disp('emf induced='+string(Eg)+'volts');
