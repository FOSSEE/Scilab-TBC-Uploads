clc
clear
//INPUT DATA
ta1=15;//dry bulb temperature in Degree c
ta2=25;//dry bulb temperature in Degree c
tw1=13;//wet bulb temperature in Degree c
tw2=18;//wet bulb temperature in Degree c
V1=30;//volume of air in m^3/min
V2=12;//volume of air in m^3/min
pva=11.22;//Saturation pressure in mm Hg
pvb=15.461;//Saturation pressure in mm Hg
p=760;//pressure in mm of Hg
cp=1.005;//specific pressure

//CALCULATIONS
pv1=(pva-((p-pva)*(ta1-tw1)*1.8/(2800-1.3*(1.8*ta1+32))));//Saturation pressure in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
pv2=pvb-((p-pvb)*(ta2-tw2)*1.8/(2800-(1.3*(1.8*ta2+32))));//Saturation pressure in mm Hg
w2=0.622*(pv2/(p-pv2));//Specific humidity in kg w.v./kg d.a
h1=cp*ta1+w1*(2500+1.88*ta1);//Enthalpy of air per kg of dry air in kJ/kg d.a
h2=cp*ta2+w2*(2500+1.88*ta2);//Enthalpy of air per kg of dry air in kJ/kg d.a
ma1=V1/0.827;//Dry mass flow rate in kg d.a./min
ma2=V2/0.8574;//Dry mass flow rate in kg d.a./min
ma3=ma1+ma2;//Dry mass flow rate in kg d.a./min
w3=((ma1*w1)+(ma2*w2))/ma3;//Specific humidity in kg w.v./kg d.a
h3=((ma1*h1)+(ma2*h2))/(ma3);//Enthalpy of air per kg of dry air in kJ/kg d.a
ta3=((ma1*ta1)+(ma2*ta2))/(ma3);//dry bulb temperature in Degree c
tw3=((ma1*tw1)+(ma2*tw2))/(ma3);//wet bulb temperature in Degree c

//OUTPUT
printf('(i)The specific humidity of the mixture is %3.4f kg w.v./kg d.a \n (ii)Specific enthalpy of the mixture is %3.2f kJ/kg d.a. \n (iii)DBT corresponds to mixture is %3.3f Degree C \n (iv)WBT corresponds to mixture is %3.3f Degree C ',w3,h3,ta3,tw3)
