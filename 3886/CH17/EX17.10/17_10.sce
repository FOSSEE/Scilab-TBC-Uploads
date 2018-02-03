//Nozzle issuing jet of water
//refer fig. 17.10 and 17.11 (a) and (b)
//Weight of water whose momentum is changed in t second is (W)
//W=(%pi*(0.05^2)*30*9810*t)/4 N
Px=236.75  //N
Py=883.58  //N
P=sqrt((Px^2)+(Py^2))  //N
//Inclination with horizontal 
theta=atand(Py/Px)  //degree
printf("The force exerted by jet is P=%.3f N\nInclination to horizontal=%.3f degree",P,theta)





