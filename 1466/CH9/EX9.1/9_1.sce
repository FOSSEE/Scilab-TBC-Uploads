clc
//initialisation of variables
hp=10000
p=0.95//percent
head=150//ft
f=0.004
l=20//ft
g=32.2//ft/sec^2
r= -3.6
//CALCULATIONS
Q=hp*550/(p*2*g*head)
d=4*l*5280*622000*f/((1-p)*head*2*g)
dia=d^0.2
f= 4.7^r
//RESULTS
printf ('diameter of pipe to transmit= %.2f ft',dia) 
printf ('\n value of f= %.4f ',f)
