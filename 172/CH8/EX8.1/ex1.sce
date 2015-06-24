//example 1
//coefficient of performance of refrigerator
clear
clc
Th=60 //temperature at which heat is rejected from R-134a
Tl=0 //temperature at which heat is absorbed into the R-134a 
s1=1.7262 //specific entropy at 0 Celsius
s2=s1 //process of state change from 1-2 is isentropic 
s3=1.2857 //specific entropy at 60 celsius
s4=s3 //process of state change from 3-4 is isentropic
disp('if Pressure is 1400 kPa,then s=1.7360 kJ/kg-K and if P=1600 kPa,then s=1.7135 kJ/kg-K.Therefore')
P2=1400+(1600-1400)*(1.7262-1.736)/(1.7135-1.736) //pressure after compression in kPa
B=(Th+273)/(Th-Tl) //coefficient of performance of refrigerator
printf(" \n hence,pressure after compression is P2=%.3f kPa.\n",P2) 
printf("\n and coefficient of performance of refrigerator is B=%.3f .\n",B)