
clc
//initialization of variables
tn = 300000 // turbulence number
v0  = 10 // cm/sec
p = 1 // g/cc
mu = 0.01 // g/cm-sec
delta = 2.5 //cm
D = 1*10^-5 // cm^2/sec
//Calculations
x = tn*mu/(v0*p)// cm
delta = ((280/13)^(1/2))*x*((mu/(x*v0*p))^(1/2))//cm
deltac = ((D*p/mu)^(1/3))*delta//cm
k = (0.323*(D/x)*((x*v0*p/mu)^0.5)*((mu/(p*D))^(1/3)))*10^5// x*10^-5 cm/sec
//Results
printf("The distance at which turbulent flow starts is %.f cm",x)
printf("\nThe boundary layer for flow at this point is %.1f cm",delta)
printf("\nThe boundary layer for concentration at this point is %.2f cm",deltac)
printf("\nThe local m.t.c at the leading edge and at the position of transistion is %.1f x10^-5 cm/sec",k)
