//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.6-2
//Introduction to engineering principles and units
//given data
//Avg Cp of cows milk is 3.85 kJ/kg K
//heat reqd= mCp)(delta T)
m=4536; //in kg/h
delT=54.4-4.4;//Temp diff
Cp=3.85;
H=(m*Cp*delT)/3600;//heat reqd in kW
mprintf("heat reqd for heating the milk is %f kW",H) 
