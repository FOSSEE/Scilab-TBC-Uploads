clc;
//page 307
//Entire truss
vB=1;//kN, verical force at B
vD=1;//kN, verical force at D
vF=1;//kN, verical force at F
vH=1;//kN, verical force at H
vJ=1;//kN, verical force at J
vC=5;//kN, verical force at C
vE=5;//kN, verical force at E
vG=5;//kN, verical force at G
h=8;//m, height
v=5;//m, horizontal distance between successive node

A=12.50;//kN, reaction at A
L=7.50;//kN, reaction at L

alpha=atan(h/3/v);// rad, angle made by inclined members with  X axis
//alpha=alpha/%pi*180;// Conversion of angle into degrees



//Force in member GI
//Applying sum(M_H)=0
F_GI=(L*2*v-vJ*v)/(2*v*tan(alpha));//kN Force in member GI
printf("Force in member GI is %.2f kN \n ",F_GI);

//Force in member FH
//Applying sum(M_G)=0
F_FH=(L*3*v-vH*v-vJ*2*v)/(-h*cos(alpha));//kN, Force in member FH
printf("Force in member FH is %.2f kN \n Negative sign shows member is in compression \n",F_FH);


//Force in member GH
be=atan(v/(2*v*tan(alpha)));//rad, as tan(be)=GI/HI
//Applying sum(M_L)=0
F_GH=(-vH*v-vJ*2*v)/(3*v*cos(be));//kN, Force in member FH
printf("Force in member GH is %.3f kN \n Negative sign shows member is in compression \n",F_GH);
