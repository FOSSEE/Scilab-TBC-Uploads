//Ex 3.4
clc;clear;close;
format('v',5);
V=110;//V(Supply voltage)
R=50;//ohm
Vm=V*sqrt(2);//V(maximum voltage)
Im=Vm/R;//A(maximum current)
Iav1=0.637*Im;//A(average current Over +ve half cycle)
Iav2=0;//(average current Over -ve half cycle)
Iav=(Iav1+Iav2)/2;//A(average current Over whole cycle)
disp(Iav,"(a) Reading on moving coil ammeter(A)");
//For thermal ammeter : I^2*R=1/4*Im^2*R(thermal effect for complete cycle)
I=sqrt(1/4*Im^2);//A(reading on thermal ammeter)
disp(I,"(a) Reading on thermal ammeter(A)");
kf=I/Iav;//form factor
kp=Im/I;//peak factor
disp(kp,kf,"(b) Form factor & peak factor are");
