clc
clear

//INPUT DATA
v=1000;//volume of hydrogen in ml
t=273;//tempature of hydrogen in kelvin
p=760;//pressure of hydrogen in mm of hg
w=0.0896;//weigh of hydrogen in gm
cp=3.409;//specific heat of hydogen in kj/kg-K
cv=2.411;//specific heat of hydrogen in kj/kg-K
g=981;//accelaration due to gravity in cm/sec^2
a=13.6;//density of mercury in gm/cm^2

//CALCULATIONS
J=(p*v*g*a)/(w*t*(cp-cv));//mechanical equivalent of heat in ergs/cals
//OUTPUT
printf('mechanical equivalent of heat is %3.2f ergs/calorie',J)
