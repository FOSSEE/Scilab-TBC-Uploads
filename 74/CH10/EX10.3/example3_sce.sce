//chapter 10
//example 10.3
//page349
V_=6;Vz=6;//potential at inverting(-) input is equal to vitual
Vr2=Vz;
Vin=30;
Rl=200;
R2=5*10^3;
R1=0;//for minimum Vout
Voutmin=((R1+R2)/R2)*Vz;//minimum output voltage
disp(Voutmin)//minimum voltage
R1=10*10^3;//for maximum output voltage
Voutmax=((R1+R2)/R2)*Vz;
disp(Voutmax)//maximum output voltage
disp(Voutmax,Voutmin)//range when potentiometer change from 0 to 10k
Vce=Vin-Voutmax;//when R1=10k and Vout=18
disp(Vce)
Ic=Voutmax/Rl;
disp(Ic)
Pd=Vce*Ic;//power
disp(Pd)//watt