
clc
//initialisation of variables
As= 13500 //ft^2
n= 16
Vs= 20 //knots
fm= 0.0094
r= 20 //Lb
fs= 0.0091
//CALCULATIONS
Am= As/n^2
s= Vs/sqrt(n)
rf= fm*Am*(Vs/sqrt(n))^2
rw= r-rf
R= n^3*(r+rf*((fs/fm)-1))
hp= R*Vs*1.69*100/(550*60)
//RESULTS
printf (' required horse power = %.f ',hp-25)
