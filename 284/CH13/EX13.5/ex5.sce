// Chapter 13_Optical Devices
//Caption_Photo conductor
//Ex_5//page 611
mup=480
mun=1350
L=100*10^-4  //length of photoconductor
A=10^-7    //cross sectional area
tau_p=10^-6    //minority carrier lifetime
V=10    //applied voltage
tn=L^2/(mun*V)
//photoconductor gain is
G=(tau_p/tn)*(1+(mup/mun))
printf('The photoconductor gain is %1.2f',G)