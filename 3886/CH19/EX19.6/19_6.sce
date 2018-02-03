//Super elevation
G=1.68  //m
r=800  //m
//(1)
v=16.667  //m/sec
alpha=atand((v^2)/(9.81*800))  //degree
//Super elevation
e=1000*G*tand(alpha)  //mm
//(2) 
v2=22.222  //m/sec
F2=1000*(((0.99937*22.222^2)/(9.81*800))-0.03537)  //kN
printf("\ne=%.3f mm\nF=%.3f kN",e,F2)



