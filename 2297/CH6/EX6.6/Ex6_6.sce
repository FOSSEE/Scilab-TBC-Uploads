//Example  6.6: e.m.f ,copper losses ,output of the prime mover ,commercial, mechanical and electrical efficiencies
clc;
clear;
close;
format('v',6)
//given data :
Il=190;//load current in Amperes
V=250;// voltage in volts
Ra=0.02;//armature resistance in ohm
Rsh=25;//shunt resistance in ohm
Ish=V/Rsh;//shunt current in amperes
Ia=Ish+Il;//armature current in amperes
E=V+(Ia*Ra);//generated voltage
disp("part (a)")
disp(E,"emf genereted,(V) = ")
Cl=(Ia^2*Ra);// armeture copper losses
Sl=Ish*V;// shunt copper losses
T=(Cl+Sl)*10^-3;//copper losses in k-Watt
disp("part (b)")
disp(T,"Total copper losses,(kW) = ")
Eo=V*Il;//output voltage in volts
I_l=950;//iron loss in watt
O=Eo+I_l+(T*10^3);//output in watt
disp(O,"Output of the prime mover,(W) = ")
Ep=O-I_l;// electrical power in W
Me=(Ep/O)*100;//Mechanical efficiency
disp("part (c)")
disp(Me,"Mechanical efficiency,(%) = ")
Ee=(Eo/Ep)*100;//Electrical efficiency
disp(Ee,"Electrical efficiency,(%) = ")
Ce=(Eo/O)*100;//Commercial efficiency
disp(Ce,"Commercial efficiency,(%) = ")

