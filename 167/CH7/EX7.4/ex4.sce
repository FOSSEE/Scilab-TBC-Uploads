//ques4
//Entropy Change during a Constant-Pressure Process
clear
clc
//approximating the compressed liquid as a saturated liquid

//state 1
P1=20//pressure in psia
T1=70//temperature in F
s1=0.07459//entropy ie sf @ 70F in Btu/lbm.R
h1=38.08//heat of system in Btu/lbm hf@ 70 F

//state 2
P2=20//pressure in psia
//using Qin=m*(h2-h1)
Qin=3450//input heat in Btu
m=3//mass in lbm
h2=Qin/m+h1//heat of system in Btu/lbm
s2=1.7761//entropy in Btu/lbm/R from table A-6E

S=m*(s2-s1);//change in entropy of system 
printf('Entropy change of water during the process = %.3f Btu/R',S);
