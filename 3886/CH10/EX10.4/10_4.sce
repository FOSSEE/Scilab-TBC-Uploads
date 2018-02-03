//Locate centre of gravity
//refer fig. 10.5
W1=0.6*0.75*0.5*25000  //N
W2=(%pi*(0.2^2)*0.3*25000)/(4)  //N
sumWi=7889.38
sumWixi=3241.57
sumWiyi=2593.25
sumWizi=1745.91
xbar=(sumWixi)/(sumWi)
ybar=(sumWiyi)/(sumWi)
zbar=(sumWizi)/(sumWi)
printf("\nxbar=%.3f m\nybar=%.3f m\nzbar=%.3f m",xbar,ybar,zbar)
