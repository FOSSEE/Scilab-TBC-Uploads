clc
clear
//INPUT DATA
//0.506 H2 +0.1 CO+0.26 CH4 +0.04 C4H8 +0.004 O2 +0.03 CO2 +0.06N2 +0.21*8 02+0.79 8 N2= a CO2 +b H20 +c O2 +d N2 ;//COMBUSTION EQUATION 
a=0.55;//CARBON BALANCE
b=1.186;//HYDROGEN BALANCE
c=0.621;//OXYGEN BALANCE
d=6.38;//NITROGEN BALANCE

//CALCULATIONS
n=a+c+d;//Total moles of dry products 
nCO2=(a/n)*100;//Analysis of products by volume
nO2=(c/n)*100;//Analysis of products by volume
nN2=(d/n)*100;//Analysis of products by volume

//OUTPUT
printf('Analysis of products by volume \n(i)CO2 %3.2f \n (ii)O2 %3.2f \n (iii)N2 %3.2f ',nCO2,nO2,nN2)
