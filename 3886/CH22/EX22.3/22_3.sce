//slender beam
//refer fig. 22.5 (a),(b) and (c)
//from vector diagram
vB=2*cotd(60)  //m/sec
vBA=(2/sind(60))  //m/sec
printf("\nvB=%.3f m/sec^2\nvB/A=%.3f m/sec",vB,vBA)
//acceleration of point B
aB=(1.778*sind(60))+(3*0.958*sind(30))
printf("\naB=%.3f m/sec^2",aB)
