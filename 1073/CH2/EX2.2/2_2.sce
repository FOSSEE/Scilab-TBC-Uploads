
clc;
printf("Example 2.2,\nPage no.2.18\n");
L=1 // m
printf("Length of ppipe,L = %f m\n",L);
r1=(50/2) // in mm
r1=r1/1000 // in m
printf("r1=%f m\n",r1);
r2=(25+3)/1000 // m
printf("r2=%f m\n",r2)
rm1=(r2-r1)/log(r2/r1);
printf("rm1=%f m\n",rm1)
k1=45 //W/(m.K)
R1=(r2-r1)/(k1*(2*%pi*rm1*L)) // K/W
printf("Thermal resistance of wall pipe=R1=%f K/W\n",R1);
printf("For inner lagging:\n") ;
k2=0.08 //W/(m.K)
ri1=0.028 //m
ri2=(ri1+r1) // m
rmi1=(ri2-ri1)/log(ri2/ri1)
R2=(ri2-ri1)/(k2*2*%pi*rmi1*L)
printf("Thermal resistance of inner lagging=R2=%f K/W",R2);
printf("For  outer lagging:\n") ;
k3=0.04 //W/(m.K)
ro1=0.053 //m
ro2=(ro1+0.04) // m
rmo1=(ro2-ro1)/log(ro2/ro1)
R3=(ro2-ro1)/(k3*2*%pi*rmo1*L)
printf("Thermal resistance of inner lagging=R2=%f K/W\n",R3);
R=R1+R2+R3
Ti=550 //K //inside
To=330 //K  // outside
dT=Ti-To; //Temperature difference
Q=dT/R
printf("Rate of heat loss per metre of pipe,Q=%f W/m",Q)
