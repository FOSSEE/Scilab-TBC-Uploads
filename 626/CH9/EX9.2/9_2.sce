clear;
clc;
close;
disp("Example 9.2")
M2=1.0 //i.e choked
Tt2=1800
gm=1.33
C1=445
Cp=1157
T2=Tt2/(1+(gm-1)*M2^2/2)
a2=((gm-1)*Cp*T2)^(1/2) 
M2=1
C2=M2*a2
alfa2=acos(C1/C2)*180/%pi
disp(alfa2,"Nozzle exit flow angle if M2=1 in degrees:")