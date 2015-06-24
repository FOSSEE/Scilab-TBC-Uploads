//ques3
//Entropy Change of a Substance in a Tank
clear
clc
//specific volume remains constant during this process

//state 1
P1=140//initial pressure in kPa
T1=20 //initial temperature in C
s1=1.0624//entropy in kJ/Kg.K from table
v1=0.16544//specific volume in m^3/Kg

//state 2
P2=100//pressure in kPa
v2=0.16544//specific volume remains same ie v2=v1

//from table
vf=0.0007259//specific volume of saturated water in m^3/kg
vg=0.19254//specific volume of saturated vapor in m^3/kg

//Final state-saturated liquid–vapor mixture
x2=(v2-vf)/(vg-vf);//x-factor
sf=0.07188//entropy of saturated water in kJ/Kg.K
sfg=0.87995//entropy change in kJ/kg.K
s2=sf+x2*sfg;//entropy at state 2 in kJ/kg.K
m=5//mass in Kg
S=m*(s2-s1);//entropy change in process in kJ
printf('Entropy change = %.3f kJ',S);

 