clc;
//Entire truss
//Applying sum(Fy)=0
Ay=480;//N, Y component of reaction at A
//Applying sum(M_A)=0
B=480*100/160;//N,  reaction at B
//Applying sum(Fx)=0
Ax=-300;//N, X component of reaction at A

alpha=atan(80/150);//radian

//Free body member BCD

//Applying sum(M_C)=0
F_DE=(-480*100-B*60)/(sin(alpha)*250);//N,  Force in link DE
printf("Force in link DE is F_DE=%.0f N\n Negative sign shows force is compressive\n",F_DE);
//Applying sum(Fx)=0
Cx=F_DE*cos(alpha)-B;//N, X component of force exerted at C
//Applying sum(Fy)=0
Cy=F_DE*sin(alpha)+Ay;//N, Y component of force exerted at C
printf("Components of force exerted at C is Cx=%.0f N and Cy=%.0f N \n",Cx,Cy);


