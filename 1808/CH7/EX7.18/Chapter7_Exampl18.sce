clc
clear
//INPUT DATA
V1=100;//volue in mm^3/min
t1=6;//dry bulb temperature in Degree c
t11=3;//dry bulb temperature in Degree c
Rc=40;//Capacity of the coil in TR
mw=40;//Amount of water vapour added in kg d.a./min
pva=5.68;//saturation pressure
p=760;//pressure in mm of Hg
Ra=287.3;//gas constant
cp=1.005;//specific pressure


//CALCULATIONS
pv1=(pva-((p-pva)*(t1-t11)*1.8)/(2800-(1.3*(1.8*t1+32))));//Saturation pressure in mm Hg
v1=Ra*(273+t1)/((p-pv1)*133.5);//volume
ma=V1/v1;//Amount of air added in kg d.a./min
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
w3=w1+(mw/(ma*60));//Specific humidity in kg w.v./kg d.a
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h3=h1+33.4;//Enthalpy of air per kg of dry air in kJ/kg d.a.
t3=h3-(w3*2500)/1.02149;//dry bulb temperature in Degree c

//OUTPUT
printf('(a)Dry bulb temperature is %3.2f Degree C \n (b)From the psychrometric chart wet bulb temperature is 17.8 Degree C ',t3)
