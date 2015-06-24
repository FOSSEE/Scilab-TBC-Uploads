clc
//initialisation of variables
u1= 1111.9 //Btu/lb
p= 170 //psia
v1= 2.675 //cu ft/lb
V1= 6000 //ft/min
g0= 32.2 //ft/sec^2
g= 32.2 //ft/sec^2
z= 10 //ft
Q= 1000//Btu/hr
u2= 914.6 //Btu/lb
p1= 3 //psia
v2= 100.9 //cu ft/lb
V2= 300 //ft/sec
g0= 32.2 //ft/sec^2
g= 32.2 //ft/sec^2
z1= 0 //ft
//CALCULATIONS
Wx= (u1+(p*v1*144/778)+((V1/60)^2/(2*g*778))+(z/778)-(Q/2500)-u2-(p1*v2*144/778)-((V2^2)/(2*g*778)))*2500
//RESULTS
printf ('Poweroutput = %.f hp',Wx*0.000393014779)
//It is the conversion factor from btu/hr to hp
