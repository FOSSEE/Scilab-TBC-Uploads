clc
//Initialization of variables
beta=1.4
p3=2000+14.7 //non guage
p2=3000+14.7 //non guage
p1=1500+14.7 //non guage
deltav=1155
//Calculations
v2=(p3/p2)^(1/beta) *(deltav) /(1-(p3/p2)^(1/beta))
v1=v2*(p2/p1)^(1/beta)
perdiff=(v1-4627.25)*100/v1
//Results
printf('volume 2 = %.1f',v2)
printf('\n volume 1 = %.1f',v1)
printf('\n percentage difference in volume = %.2f',perdiff)
