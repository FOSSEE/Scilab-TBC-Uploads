
clc
//initialisation of variables
ne=0.0019
n=300//rpm
pi=22/7
t=0.01/12//ft
R1=0.25//ft
R2=0.167//ft
//CALCULATIONS
w=pi*n/60
T=pi*0.0019*w*2*(R1^4-R2^4)/(2*t)
hp=T*2*pi*n/33000
//RESULTS
printf (' hp absorbed= %.2f',hp)
