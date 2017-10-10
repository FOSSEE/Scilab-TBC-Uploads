clc;

// Mo=r_BO * F_B relation 3.7 from section 3.5
r_BO=[0,7,0];//m
//F_B=T_AB+T_BC; N , 
mT_AB=555;//N, Tension in Cable AB
mT_BC=660;//N, Tension in cable AC
CA=[0.3,0, 0.08];//m, vector AC reprecsented in rectangular component
//lambda=CD/norm(CD)-m, Unit vector along CD
//F=f*lambda;//m, Force 
BA=[-0.75,-7,6];//m, Position vector BA resolved into rectangular component
BC=[4.25,-7,1];//m,Position vector BC resolved into rectangular component

lambda_BA=BA/norm(BA);//m, Unit vector along BA
T_AB=mT_AB*lambda_BA;//m, Force along cable AB

lambda_BC=BC/norm(BC);//m, Unit vector along Bc
T_BC=mT_BC*lambda_BC;//m, Force along cable BC

F_B=T_AB+T_BC;// N
// M_A=r_CA * F relation 3.7 from section 3.5
//i=1; j=1; k=1; Unit vectors along X, Y and Z direction respectively

// Componenets of moment M_A along X,Y and Z direction respectively
M_Ax=det([r_BO(2),r_BO(3); F_B(2), F_B(3)]);//N.m
M_Ay=-det([r_BO(1),r_BO(3) ; F_B(1),F_B(3)]);//N.m
M_Az=det([r_BO(1),r_BO(2) ;F_B(1), F_B(2)]);// N.m 

printf("Answer can  be written as M_B = %.2f N.m i + %.2f N.m j + %.2f N.m k \n",M_Ax,M_Ay,M_Az);



