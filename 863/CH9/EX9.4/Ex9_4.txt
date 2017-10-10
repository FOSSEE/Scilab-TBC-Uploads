//Caption:Determine Rsmax,Rsmin,and minimum drain source voltage
//Ex9.4
clc;
clear;
close;
I=2//Drain Current(in mA)
Vgsm=3//Maximum gate source voltage(in volts)
Vgsn=0.5//Minimum gate source voltage(in volts)
V=6//Peak voltage(in volts)
Rs1=Vgsm/I
Rs2=Vgsn*1000/I
Vds=V-Vgsm+1
disp(Vds,Rs2,Rs1,'Required resistances Rsmax(in kilo ohm),Rsmin(in ohm) and drain source voltage(in volts)=')