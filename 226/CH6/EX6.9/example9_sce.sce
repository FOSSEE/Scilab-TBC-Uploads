//chapter 6
//example 6.9
//page 267
printf("\n")
printf("given")
hie=2.1*10^3;hfe=75;R1=10*10^3;R2=10*10^3;Re=4.7*10^3;Rl=12*10^3;rs=1*10^3;
disp(" Rl is not connected")
hic=hie
hfc=1+hfe
Zb=hic+hfc*(Re)
Zi=(R1*R2*Zb)/(R1+R2+Zb)
Ze=(hic+(R1*R2*rs)/(R1+R2+rs))/hfc
Z0=(Ze*Re)/(Ze+Re)
disp(" when Rl is connected")
Zb=hic+hfc*((Re*Rl)/(Re+Rl))
Zi=(R1*R2*Zb)/(R1+R2+Zb)
hib=hie/(1+hfe)
Av=((Re*Rl)/(Re+Rl))/(hib+((Re*Rl)/(Re+Rl)))