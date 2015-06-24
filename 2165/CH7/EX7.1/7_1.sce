clc
//initialisation of variables
C=86//percent
h=4.2//percent
w=20//lb
a=w+0.902//lb
C2=44/12//lb
N=0.77//lb
CO2=3.15
H2O=0.042*9//lb
N2=w*N//lb
Ox=a-CO2-H2O-N2//lb
//CALCULATIONS
Co2=CO2/a*100//percent
H2o=H2O/a*100//percent
n2=N2/a//percent
o2=Ox/a*100//percent
//RESULTS
printf('the composition of the products of combutions by weight=% f percent',o2)
