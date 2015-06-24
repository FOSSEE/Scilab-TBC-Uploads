//example 13
//cooking with a pressure cooker
clear
clc
disp('This process can be analyzed as a uniform-flow process since the properties of the steam leaving the control volume remain constant during the entire cooking process')
disp('We take the pressure cooker as the system. This is a control volume since mass crosses the system boundary during the process.We observe that this is an unsteady-flow process since changes occur within the control volume. Also, there is one exit and no inlets for mass flow.')
Pgage=75 //gage pressure inside cooker in kPa
Patm=100 //atmospheric pressure in kPa
Pabs=Pgage+Patm //absolute pressure inside pressure cooker in kPa
disp('Since saturation conditions exist in the cooker at all times , the cooking temperature must be the saturation temperature corresponding to this pressure.From steam table, it is')
Tsat=116.04 // Saturation Temp. at 175 kPa in Celsius
T=Tsat //Temp. at which cooking takes place
Qin=0.5 //Heat supplied to the pressure cooker in kJ/s
t=30*60 //time for which het is supplied to pressure cooker in seconds
qin=Qin*t //total heat supplied to pressure cooker in kJ
m1=1 //initial mass of water in kg
V=0.006 //volume of pressure cooker in m^3
V1=V/m1 // initial specific volume in kg/m^3
Vf=0.001 //in kg/m^3
Vfg=1.004-0.001 //in kg/m^3
x1=(V1-Vf)/Vfg //quality
uf=486.82 //in kJ/kg
ufg=2037.7 //in kJ/kg
u1=uf+x1*ufg //specific internal energy in kJ/kg
U1=m1*u1 //total internal energy
disp('V2=Vf+x2*Vfg  and u2=uf+x2*ufg.upon substituting various values,we get ')
x2=0.009 //quality of steam in final state
V2=Vf+x2*Vfg //final specific volume in m^3/kg
m2=V/V2 //amount of water left in the pressure cooker in kg
printf("\n Hence,the temperature at whih cooking takes place is = %.2f C. \n",T);
printf("\n The amount of water left in the pressure cooker at the end of the process = %.1f kg. \n",m2);