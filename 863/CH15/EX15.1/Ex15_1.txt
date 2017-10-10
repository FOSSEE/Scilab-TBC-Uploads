//Caption:Determine the errors due to Rs and Rd
//Ex15.1
clc;
clear;
close;
Vs=1//Source voltage(in volts)
Rs=100//Source resistance(in ohm)
Rl=10//Load resistance(in kilo ohm)
Rd=30//Drain resistance(in ohm)
Vgs=10//Gate source voltage(in volts)
V1=-(Vs+Vgs+1)
Id=Vs/(Rs+Rd+Rl)
e1=(Id*Rs)*100/(Vs)
e2=(Id*Rd)*100/(Vs)
disp(e2,e1,'Errors due to Rs(in %) and due to Rd(in %)=')