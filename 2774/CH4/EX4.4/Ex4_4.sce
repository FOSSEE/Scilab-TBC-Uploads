clc
// initialization of variables
P=400 //  pressure in kPa
T1=200 // initial tmperature in degree celsius
V=2 // initial volume in m^3
Q=3500 // heat added in kJ

//solution
h1=2860 // initial enthalpy @ 200*C and 400 kPa from steam table
v=0.5342 // specific volume from steam table C.3 
m=V/v;
h2=(Q/m)+h1; // final enthalpy in kJ/kg from energy equation

// NOW USING THIS ENTHLAPY AND INTERPOlATING FROM STEAM TABLE
T2=600+(92.6/224)*100
printf("The Final temperature is  "+string(T2)+" degree Celsius")
// result is obtained from interpolation on steam table


 
