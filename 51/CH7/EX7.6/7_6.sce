clc;
clear;
D=2;//ft
Q=30;//cfs
Dm=3;//in
//Rem=Re; hence (Vm*Dm/kvism)=(V*D/kvis); where kvis is kinematic viscosity
//kvis=kvism; same fluid is used for model and prototype
//(Vm/V)=(D/Dm)
//Q=VA; hence Qm/Q = (Vm*Am)/(V*A)=(Dm/D)
Qm=(Dm/12)*Q/D;//cfs
disp("cfs",Qm,"The required flowrate in the model=")
Drat=0.04:0.01:1;
count=1;
for i=0.04:0.01:1
    Vrat(count)=1/i;
    count=count+1;
end
plot2d(Drat,Vrat,rect=[0,0,1,25])
xtitle("Vm/V vs Dm/D","Dm/D","Vm/V")
