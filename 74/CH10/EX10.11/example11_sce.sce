//chapter10
//example 10.11
//page 10.11
Vo=5;Io=50*10^-3;
Isc=75*10^-3;Vin=15;
Vsense=.6;Vref=7;
I=1*10^-3;//current through R1 and R2
R2=Vo/I;
disp(R2)
VR1=Vref-Vo;//voltage across R1
disp(VR1)
R1=VR1/I;
disp(R1)
R3=R1*R2/(R1+R2);//R3=R1||R2
disp(R3)
Rsc=Vsense/Isc;
disp(Rsc)
C1=7.4*10^-6/10;
disp(R1,R2,R3,Rsc,C1)//component value