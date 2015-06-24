//chapter 18
//example 18.2
//page 762
printf("\n")
printf("given")
Vo=12;Il=40*10^-3;Vs=20;Vbe=.7;
Vz=.75*Vo
disp("for minimum D1 current select")
Ir2=10*10^-3;
R2=(Vo-Vz)/Ir2
Ie1=Il+Ir2
disp("specification for Q")
Vce1=20;Vs=Vce1;
Ic1=50*10^-3;
Pd=(Vs-Vo)*Ie1
hfe=50;
Ib1=Ie1/hfe
Ic2=5*10^-3;
R1=(Vs-(Vo+.7))/(Ic2+Ib1)
Iz=Ie2+Ir2
I4=1*10^-3;
R4=(Vz+Vbe)/I4
R3=(Vo-(Vz+Vbe))/I4