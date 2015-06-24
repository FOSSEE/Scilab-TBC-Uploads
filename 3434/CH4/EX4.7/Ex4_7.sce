// given data
clc
phi=28.58 // in degree
B=30 // in degree
n=318 // november 14
Hg=16282.8 // in kJ/m^2-day from Table C1 appendix C
Hd=4107.6 // in kJ/m^2-day from Table C2 appendix C

dlta=23.45*(sind((360.0*(284.0+n)/365.0))) // in degrees

ws=acosd(tand(phi)*(atan(dlta))) // hour angle at sunrise

Rb=(ws*sind(dlta)*sind(phi-B)+cosd((dlta))*sind(ws)*cosd(phi-B))/(ws*sind(dlta)*sind(phi)+cosd((dlta))*sind(ws)*cosd((phi)))

Rd=(1+cosd((B)))/2 

Rr=0.2*(1-cosd((B)))/2 

Ht=((1-(Hd/Hg))*1.56+(Hd/Hg)*Rd + Rr)*Hg
printf("Monthly average total radiation is %.2f kJ/m^2-h",Ht)
