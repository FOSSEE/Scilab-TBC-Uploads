//Aeroplane
//refer fig. 19.10
r=1300  //m
W=8  //kN
v=(400*1000)/(60*60)  //m/sec
//Angle of bank 
alpha=atand((111.111^2)/(9.81*1300))  //degree
//Lift under flight condition is
N=80*((cosd(alpha))+(((sind(alpha))*111.111^2)/(9.81*1300)))  //kN
printf("\nalpha=%.2f degree\nN=%.2f kN",alpha,N)

