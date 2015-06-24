clc
clear
//Initialization of variables
ta=310 //K
pa=80 //kPa
r=10
k=1.4
R=8.3143
n=5/29
cv=20.93
//calculations
Qab=0
tb=ta*r^(k-1)
va=R*ta/pa
vb=va/r
pb=R*tb/vb
Wab= -n*R*ta/(k-1) *((pb/pa)^((k-1)/k) -1)
vc=vb
Qbc=500 //kJ
Wbc=0
tc=tb+ Qbc/(n*cv)
pc=R*tc/vc
Qcd=0
td=tc/r^(k-1)
vd=va
pd=td/tc*(vc/vd)*pc
Wcd=-n*R*tc/(k-1) *((pd/pc)^((k-1)/k)-1)
Wda=0
Qda=n*cv*(ta-td)
eta0=1-1/r^(k-1)
//results
printf("Efficiency of cycle = %.3f",eta0)
p=[pa pb pc pd]
t=[ta tb tc td]
Q=[Qab Qbc Qcd Qda]
W=[Wab Wbc Wcd Wda]
disp('Pressure (kPa) = ')
format('v',6);p
disp(p)
disp("Temperature (K)= ")
format('v',6);t
disp(t)
disp("Heat (kJ)= ")
format('v',6);Q
disp(Q)
disp("Work done (kJ) = ")
format('v',6);W
disp(W)
