clc
clear
//INPUT DATA
w=0.016;//specific humidity in kg/kg
p=760;//pressure in mm of Hg
ps=31.78;//saturation pressure in mm of Hg
 
//CALCULATIONS
pv=(p)*0.02572/1.02572;//Partial pressure of vapour in mm of Hg
x=(pv/ps)*100;//Relative humidity in percentage

//OUTPUT
printf('(a)The partial pressure of vapour is %3.4f mm of Hg \n (b)Relative humidity is %3.2f percentage \n (c)According to steam tables Dew point temperature is 21.34 degree c',pv,x)

 
