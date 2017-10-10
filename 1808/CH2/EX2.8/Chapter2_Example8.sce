clc
clear
//INPUT DATA
a=40;//percentage of H2 fuel
b=10;//percentage of CO fuel
c=3;//percentage of N2 fuel
d=40;//percentage of CH4 fuel
e=5;//percentage of CO2 fuel
f=2;//percentage of O2 fuel
N=4.76;//Amount of nitrogen require for complete combustion

//CALCULATIONS
x=a+b+c+d+e;//Total volumetric analysis of fuel
//H2+ (1/2)O2= H2O 
X1=a/2;//Moles of oxygen required
//CO+(1/2)O2=CO2
X2=b/2;//Moles of oxygen required
//CH4+2O2=CO2+2H2O
X3=2*d;//Moles of oxygen required
X4=-f;//Moles of oxygen required
Y=X1+X2+X3+X4;//Moles of oxygen required for 100 moles of gas
Z=Y*N;//Moles of air required for 100 moles of gas
Z1=Z/x;//Theoritical air required for 1 mole of gas

//OUTPUT
printf('Theoritical air required for 1 mole of gas %3.1f mole of air',Z1)





