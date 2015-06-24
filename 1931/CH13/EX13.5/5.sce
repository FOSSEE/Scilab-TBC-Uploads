clc
clear
//INPUT DATA
er=4.94//static dielecric constant of a material
n=2.69//n is the index of friction

//CALCULATION
x=((er-1)*(n+2))/((er+2)*(n-1))-1//Ratio between ionic and electronic polarisability of this material
y=1/x//Ratio between electronic and ionic polarisability of this material

//OUTPUT
printf('Ratio between electronic and ionic polarisability of this material is %3.4f ',y)
