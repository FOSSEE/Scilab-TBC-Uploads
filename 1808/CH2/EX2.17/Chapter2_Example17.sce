clc
clear
//INPUT DATA
hc=4;//cylinders
mf=2;//mass flow rate in g/s
vd=2.8;//capacity in litres
N=1500;//speed in rpm
ta=303;//temperature in K
Pa=101.325;//atmospheric pressure in kPa
R=0.287;//gas constant in kJ/kgK
xs =15.14;//air fuel ratio 
//C8H18+12.5(O2+3.773N2)=8CO2+9H2O+47.16 N2;//Chemical equation 

//CALCULATIONS
ma1=xs*mf;//mass of air in g/s
ma=ma1/50;//mass of air in g/cylinder/cycle
ro=Pa/(R*ta);//density in kg/m^3
nv=ma/(ro*vd/4);//Volumetric efficiency

//OUTPUT
printf('Volumetric effiiciency is %3.4f ',nv)






