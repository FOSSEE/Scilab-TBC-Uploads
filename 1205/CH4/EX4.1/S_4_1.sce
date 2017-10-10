clc;
//Determination of B
//At equillibrium +sum(M_A)=0
//B*1.5m-(9.81kN)(2 m)-(23.5 kN)(6 m)=0, B assumed to be in +ve X direction
B=(9.81*2+23.5*6)/1.5//kN
printf("B=%.2f kN \n +ve sign shows reaction is directed as assumed ",B);
//Determination of Ax
//Sum Fx=0
//Ax+B=0
Ax=-B;//kN
printf("Ax=%.2f kN\n",Ax);
//Determination of Ay
//Sum Fy=0
//Ay-9.81 kN-23.5kN=0
Ay=9.81+23.5;//kN
printf("Ay=%.2f kN\n",Ay);
A=[Ax,Ay];//kN Adding component
A=norm(A);//Magnitude of force A
theta=atan(Ay/Ax);//radians
theta=theta*180/%pi;//degrees, conversion into degrees
printf("Reaction at A is A=%.2f kN making angle %.2f degrees with + ve x axis ",A,theta);
