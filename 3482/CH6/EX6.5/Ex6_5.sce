clc;
//page 320
P=18;//kN, Force applied at D
AF=3.6;//m, Length AF
EF=2;//m, Length EF
ED=2;//m, Length ED
DC=2;//m, Length DC
//Entire frame
//Applying sum(M_F)=0
Ay=-P*(EF+ED)/AF;//kN, Y component of reaction at A

//Applying sum(Fx)=0
Ax=-P;//kN, X component of reaction at A
//Applying sum(Fy)=0
F=-Ay;//kN,  reaction at B


printf("Components of force exerted at A is Ax=%.0f kN and Ay=%.0f kN \n",Ax,Ay);
printf("Force exerted at F is F=%.0f kN \n",F);
//Free body member BE
//Applying sum(Fx)=0
//B=E, and as it is 2 force member
By=0;
Ey=0;

//Member ABC
//Applying sum(Fy)=0
Cy=-Ay;//kN, Y component of force exerted at C
//Applying sum(M_C)=0
B=(Ay*AF-Ax*(DC+ED+EF))/(ED+DC);//kN,  Force in link DE
printf("Force exerted at B is B=%.0f kN  \n",B);
//Applying sum(Fx)=0
Cx=-Ax-B;//kN, X component of force exerted at C

printf("Components of force exerted at C is Cx=%.0f kN and Cy=%.0f kN \n",Cx,Cy);

printf("Negative signs shows forces are in negative direction\n")


