clc;
F_B=30;//kN, Vertical Force applied at B
F_C=60;//kN, Vertical Force applied at C
F_D=20;//kN, Vertical Force applied at D
AB=6;//m, perpendicular distance between A and B
BC=3;//m, perpendicular distance between C and B
CD=4.5;//m, perpendicular distance between c and D
DE=4.5;//m, perpendicular distance between D and E
AE=6;//m, vertical perpendicular distance between A and E
AC=1.5;//m, vertical perpendicular distance between A and C
//For entire cable
//Sum(M_E)=0, AB*Ax-Ay*(AB+BC+CD+DE)+F_B*(BC+CD+DE)+F_C*(CD+DE)+F_D*(DE)=0

//Free body ABC 
//Sum(M_c)=0 gives -Ax*AC-Ay*(AB+BC)+F_B*BC=0
//we get 2 equations in Ax and Ay
A=[AB,-(AB+BC+CD+DE);-AC,-(AB+BC)];//Matrix of coeficients
B=[-(F_B*(BC+CD+DE)+F_C*(CD+DE)+F_D*(DE));-F_B*BC]; 
X=linsolve(A,-B);//kN, Solution matrix
Ax=X(1);//kN, X component of reaction at A
Ay=X(2);//kN, Y component of reaction at A


//a. Elevation of points B and D
//Free body AB
//sum(M_B)=0
yB=-Ay*AB/Ax;//m, below A
printf("Elevation of point B is %.2f m below A\n",yB);
//free body ABCD
//sum(M_D)=0
yD=(Ay*(AB+BC+CD)-F_B*(BC+CD)-F_C*CD)/Ax;//m, above A
printf("Elevation of point D is %.2f m above A\n",yD);

//Maximum slope and maximum tension
theta=atan((AE-yD)/DE);//rad 
Tmax=-Ax/cos(theta);//kN, maximum tension
theta=theta/%pi*180;//degree

printf("Maximum slope is theta= %.1f degree and maximum tension in the cable is Tmax= %.1f kN \n",theta,Tmax);

