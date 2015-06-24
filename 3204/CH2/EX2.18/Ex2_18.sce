//Initilization of variables
Wa=1000 //N //weight of sphere A
Wb=400 //N //weight of sphere B
Ra=0.09 //m //radius of sphere A
Rb=0.05 //m //radius of sphere B
theta=33.86 //degree //angle made by Rq with Wb
alpha=60 //degree //angle made by Rl with horizontal
//Calculations
Rq=Wb/cosd(theta) //N //using sum Fy=0 for sphere B
Rp=Rq*sind(theta) //N //using sum Fx=0 for sphere B
Rl=(Rq*sind(theta))/sind(alpha) //N //using sum Fx=0 for sphere A
Rn=((Wa)+(Rq*cosd(theta))-(Rl*cosd(alpha))) //N
//Results
clc
printf('The reaction at point P is %f N \n',Rp)
printf('The reaction at point L is %f N \n',Rl)
printf('The reaction at point N is %f N \n',Rn)
