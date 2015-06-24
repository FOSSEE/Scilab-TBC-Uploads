clc;
//page 306
//Entire truss
v1=140;//kn, verical force 1
v2=140;//kN, Vertical force 2
h=80;//kN , Horizontal force
//Applying sum(M_B)=0
J=(v1*4+v2*12+h*5)/16;//kN

//Applying sum Fx=0
Bx=-h;//kN, negative sign shows it is along negative x axis

//Applying sumFy=0

By=v1+v2-J;//kN

//Force in member EF
//Applying sumFy=0
F_EF=By-v2;//kN, Force in member EF
printf("Force in member EF is %.0f kN \n Negative sign shows member is in compression \n",F_EF);

//Force in member GI
F_GI=(-J*4-Bx*5)/5;//kN Force in member GI
printf("Force in member GI is %.0f kN \n Negative sign shows member is in compression \n",F_GI);
//Answer difference is because of rounding off variables
