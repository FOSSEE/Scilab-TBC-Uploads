clear;
clc;
close;
disp("Example 9.1")
 Tt1=1800
 M1=0.55
 alfa1=0
 gm=1.33
 Cp=1157
 alfa2=60
 T1=Tt1/(1+(gm-1)*M1^2/2)
 a1=((gm-1)*Cp*T1)^(1/2)
 C1=a1*M1
 C2=C1/cosd(alfa2)
 Tt2=Tt1
 T2=Tt2-C2^2/(2*Cp)
 a2=((gm-1)*Cp*T2)^(1/2)
 M2=C2/a2
 Ct2=C1*tand(alfa2)
 r=0.35
 t=0-r*Ct2
 disp(C1,"(a)Inlet velocity C1 in m/s :")
 disp(M2,"(b)The exit absolute Mach no. M2 :")
 disp(t,"(c)Nozzle torque per unit mass flow rate for r1=r2=0.35m :")