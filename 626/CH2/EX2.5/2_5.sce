clear;
clc;
close;
disp("Example2.5")
m=50 //mass flow rate in kg/s.
T1=298 //inlet temperature in K.
u1=150 //inlet velocity in m/s.
cp1=1004 //specific heat at constant pressure of inlet in J/kg.K.
gm=1.4 //gamma.
u2=400 // exit velocity in m/s.
cp2=1243. //specific heat at constant pressure of exit in J/kg.K.
q=42*10^6 //heat transfer rate in control volume in Watt.
me=-100*10^3 //mechanical power in Watt.
//first calculate total enthalpy at the inlet:
ht1=cp1*T1+(u1^2)/2; //ht1=Total inlet enthalpy.
//now applying conservation of energy equation:
ht2=ht1+((q-me)/m) //ht2=Total enthalpy at exit.
Tt2=ht2/cp2; //Tt2=Total exit temperature.
T2=Tt2-((u2^2)/(2*cp2)); //T2=static exit temperature.
disp(Tt2,"Exit total temperature in K:");
disp(T2,"Exit static temperature in K:");