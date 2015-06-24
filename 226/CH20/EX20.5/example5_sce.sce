//chapter 20
//example 20.5
//page 9
printf("\n")
printf("given")
R1=25*10^3;R2=2.7*10^3;C1=3*10^-6;Vg=.8;Vd1=8;Vs=115;f=60;
Vc1=Vd1+Vg
//assume the average charging voltage is
Vac=1.414*Vs
E=.636*Vac
//average charging
Ic=E/(R1+R2)
//charging time
t=(C1*Vc1)/Ic
T=1/f
q=(t*360)/T
disp(" concudtion angle")
a=180-q