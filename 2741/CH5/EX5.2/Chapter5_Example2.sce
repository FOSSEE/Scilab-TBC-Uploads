clc
clear
//Input data 
t=1;//The increase in the temperature of a piece of aluminium in degree centigrade 
a=6*10^23;//The number of atoms present in 27 g of aluminium in atoms 
Sp=0.22;//The specific heat of aluminium in cal/g-K 
m=27;//The amount of aluminium in g 
J=4.2*10^7;//The mechanical equivalent of heat in ergs/calorie 

//Calculations 
H=m*Sp*t;//Heat required to raise the temperature of 27 gms of aluminium by 1 degree centigrade in cals 
E=m*Sp*J;//Energy gained by atoms of aluminium in ergs 
E1=E/a;//Increase in energy per atom of aluminium in ergs 

//Output 
printf('The increase in energy per atom of aluminium is %3.4g ergs ',E1)

