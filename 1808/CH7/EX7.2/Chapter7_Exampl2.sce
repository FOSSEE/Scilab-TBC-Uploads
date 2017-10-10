clc
clear
//INPUT DATA
t=20;//Moist temperature in Degree c
td=15;//Dew point temperature in Degree c
pv=12.79;//vapour pressure in mm of Hg
p2=17.52//pressure of water vapour in mm of Hg
pa=727.21;//pressure of air in mm of Hg
hfgt=2454.1;//Specific enthalpy in kJ/kgw.v.
hfgd=2465.9;//Specific enthalpy in kJ/kgw.v.
cpa=1.005;//specific pressure
Ra=287.3;//gas constant

//CALCULATIONS
pv1=12.79*133.5;//prtial pressure in N/m^2
x=(pv/p2)*100;//realtive humidity in percentage
w=0.622*(pv/pa);//Specific humidity in kg w.v./kg d.a
hv=((4.1868*td)+(hfgd)+(1.88*(t-td)));//Specific enthalpy of water vapour in kJ/kg w.v
hv1=2500+1.8*(t);//Specific enthalpy of water vapour in kJ/kg w.v
hv2=4.1868*t+2454.1;//Specific enthalpy of water vapour in kJ/kg w.v
h=cpa*t+w*hv;//Enthalpy of air per kg of dry air in kJ/kg d.a
va=(Ra*(t+273))/(pa*133.5);//Specific volume of air per kg of dry air in m^3/kg d.a

//OUTPUT
printf('(a)From steam tables partial pressure of water is %3.1f N/m^2 \n (b)Relative humidity is %3.2f percentage\n (c)Specific humidity %3.5f kg w.v./kg d.a \n(d)Specific enthalpy of water vapour is %3.3f kJ/kg w.v. \n (e)Enthalpy of air per kg of dry air is %3.2f kJ/kg d.a.\n (f)Specific volume of air per kg of dry air is %3.4f m^3/kg d.a.',pv1,x,w,hv,h,va)

