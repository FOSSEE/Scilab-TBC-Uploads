clc
//initialization of varaibles
rh=0.75
pg=0.5069
inc=10 //in
pA=29.50 //psia
//calculations
pw=rh*pg
p=(29.50+ inc/13.6)*0.491
pA=p-pw
mratio=pw*18/(pA*29)
//results
printf("Pounds of water vapor enter the surface per pound of dry air = %.4f lb vapor/lb air",mratio)
