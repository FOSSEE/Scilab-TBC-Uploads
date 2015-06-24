//caption:find value of frequency of the bridge arm resistance of arm AD
//Ex4.13
clc
clear
close
R1=1000//resistance of arm AB(in ohm)
C1=0.159*10^-6//capacitance of arm AB(in F)
R2=1000//resistance of arm BC(in ohm)
C3=0.636*10^-6//capacitance of arm BC(in F)
R4=500//resistance of arm BC(in ohm)
R3=R1*((R4/R2)-(C1/C3))
disp(R3,'resistance of the arm AD(in ohm)=')
f=1/(2*%pi*sqrt(C1*C3*R1*R3))
disp(f,'frequency of the bridge(in Hz)=')