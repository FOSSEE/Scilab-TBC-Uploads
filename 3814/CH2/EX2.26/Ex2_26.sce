//Example No 2.6 
pi=3.142
D2=2.7
Q=30
gamma1=9800 
z1=20
z2=6
g=9.8

//Calculation
a2=(pi/4)*D2^2 // Area of exit pipe in m^2
V2=Q/a2   // from equation of continuity in m/s
Ht=(z1-V2^2/2*g-z2)  //head developed by turbine
P=gamma1*Q*Ht     //power developed by turbine

mprintf("\n a2=%f ",a2);
mprintf("\n V2=%f nm/s",V2);
mprintf("\n Ht=%f m",Ht);
mprintf("\n P=%f Kw",P);




