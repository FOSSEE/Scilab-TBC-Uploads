//batsman
//refer fig 17.2 (a) and (b)
//Let Fx be the horizontal component and Fy be the vertical component
//Applying impulse momentum equation in horizontal direction
Fx=(48*cosd(30)+20)/(9.81*0.02)  //N
//Applying impulse momentum equation in vertical direction
Fy=(48*sind(30))/(9.81*0.02)   //N
//Resultant force
F=sqrt(((Fx)^2)+((Fy)^2))  //N
theta=atand(Fy/Fx)  //degree
printf("\nF=%.3f N\ntheta=%.3f degree",F,theta)


