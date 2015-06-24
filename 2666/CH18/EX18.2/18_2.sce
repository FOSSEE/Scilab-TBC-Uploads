clc
//initialisation of variables
t1=500//R
t2=800//R
p=14.7//psia
p1=2.182//psia
p2=11.410//pisa
h1=96.38//Btu per lb
h2=23.97//Btu per lb
//CALCULATION
P=p*(p2/p1)//psia
E=h1-h2//Btu per lb of air
//RESULTS
printf('the final pressure and the change in enthalpy=% f Btu per lb of air',E)
