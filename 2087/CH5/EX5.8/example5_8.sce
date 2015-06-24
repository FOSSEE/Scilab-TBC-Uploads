

//example 5.8
//calculate coefficient of permeability
//percentage error
//actual radius of influence
clc;
//given
d=0.2;            //diameter of well
Q=240;           //discharge
RL1=240.5;       //reduce level of original water surface
RL2=235.6;       //reduced level of water at pumping
RL3=210;         //reduced level of impervious layer
RL4=239.8;       //reduced level of water in well
D=50;             //radial distance of well from tube well
//Part(a)
h1=RL2-RL3;
h2=RL4-RL3;
k1=Q*24*log10(D*2/d)/(1.36*(h2^2-h1^2));
k1=round(k1*100)/100;
mprintf("Part(a)");
mprintf("\ncoefficient of permeability=%f m/day.",k1);
//Part (b)
R=300;               //radius of influence
H=RL1-RL3;
h=RL2-RL3;
k2=Q*24*log10(R*2/d)/(1.36*(H^2-h^2));
PE=(k2-k1)*100/k1;
mprintf("\nPart(b)");
mprintf("\npercentage error=%i percent.",PE);
//Part (b)
R=(d/2)*10^(1.36*k1*(H^2-h^2)/(24*Q));
mprintf("\nPart(c)");
mprintf("\nActual radius of influence=%i m.",R);



