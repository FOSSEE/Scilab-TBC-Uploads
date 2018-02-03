//Power of a locomotive
//refer fig.16.7 (a) and (b)
v=(56*1000)/(60*60)  //m/sec
F=5*420/1000  //kN
W=420  //kN
P=F+W*(1/120)  //kN
//Power of Locomotive Pw
Pw=P*v  //kW (mistake in book)
u=15.556  //m/sec
//Resultant force parallel to the plane R
R=F+W*sind(theta)  //kN (Down the plane)
s=((420*(15.556^2))/(2*9.81*5.6))  //m
printf("Power of locomotive=%.4f kW\ns=%.4f m",Pw,s)
//The answers vary due to round off error






 
