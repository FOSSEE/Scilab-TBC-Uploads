//Load required at point D
//Refer fig. 2.22 (a),(b) and (c)
//Using simple geometry we have
alpha=acosd(1.3125/1.5)  //degree
Beta=acosd(2-1.3125)  //degree
//Applying Lami's Theorem at point C
T1=1500*sind(90)/sind(180-alpha)  //N
T2=1500*sind(90+alpha)/sind(180-alpha)  //N
//Applying Lami's Theorem at point B
T3=T2*sind(90)/sind(90+Beta)  //N
W=T2*sind(180-Beta)/sind(90+Beta)  //N
printf("The load required to be connected at point D is W=%.1f N",W)
