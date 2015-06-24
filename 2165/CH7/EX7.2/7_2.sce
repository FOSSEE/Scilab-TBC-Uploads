
clc
//initialisation of variables
g=0.05//percent
n=0.35//percent
c=0.5//percent
h=10//percent
m=167//C H U
h1=162//C H U
v=1//ft^3
H2=0.5//ft^3
Co=0.05//ft^3
v2=3//ft
//CALCULATIONS
G=(g*c)+(n*H2)//ft^3
Tv=(g*h1)+(n*m)//C H U
M=Tv/v2//C H U/ft^3
//RESULTS
printf('the gas with twice its volume of air=% f C H U/ft^3',M)
