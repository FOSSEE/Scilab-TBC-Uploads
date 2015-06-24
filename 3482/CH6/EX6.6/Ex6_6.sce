clc;
P=3;//kN, Horizontal Force applied at A
AB=1;//m, perpendicular distance between A and B
BD=1;//m, perpendicular distance between D and B
CD=1;//m, perpendicular distance between C and D
FC=1;//m, perpendicular distance between C and F
EF=2.4;//m, perpendicular distance between E and F
//Entire frame
//Applying sum(M_E)=0
Fy=P*(AB+BD+CD+FC)/EF;//kN, Y component of reaction at F


//Applying sum(Fy)=0
Ey=-Fy;//kN, Y component of  reaction at E

//Free body member ACE
//Applying sum(Fy)=0, and sum(M_E)=0 we get 2 equation
A=[-AB/sqrt(AB^2+EF^2),CD/sqrt(CD^2+EF^2);-EF/sqrt(AB^2+EF^2)*(AB+BD+CD+FC),-EF/sqrt(CD^2+EF^2)];// Matrix of coefficients
B=[Ey;-P*(AB+BD+CD+FC)];// Matrix B
X=linsolve(A,B);//kN Solution matrix
F_AB=X(1);//kN, Forec inmember AB
F_CD=X(2);//kN, Forec inmember CD
Ex=-P-EF/sqrt(AB^2+EF^2)*F_AB-EF/sqrt(CD^2+EF^2)*F_CD;//kN, X component of force exerted at E
//Free body : Entire frame
//Applying sum(F_X)=0
Fx=-P-Ex;//kN, X component of force exetered at F
printf("Components of force exerted at F is Fx=%.1f kN and Fy=%.0f kN \n",Fx,Fy);
printf("Force in member AB is F_AB=%.1f kN \n",F_AB);
printf("Force in member CD is F_CD=%.1f kN \n",F_CD);
printf("Components of force exerted at E is Ex=%.1f kN and Ey=%.1f kN \n",Ex,Ey);

printf("Negative signs shows forces are in negative direction\n")


