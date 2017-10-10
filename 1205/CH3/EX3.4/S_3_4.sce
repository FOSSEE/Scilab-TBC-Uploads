clc;
// Given data
// M_A=r_CA * F relation 3.7 from section 3.5
f=200; // N , Magnitude of Force directed along CD
r_CA=[0.3,0, 0.08];//m, vector AC reprecsented in rectangular component
//lambda=CD/norm(CD)-m, Unit vector along CD
//F=f*lambda;//m, Force 
CD=[-0.3, 0.24, -0.32];//Vector CD resolved into rectangular component
// norm(CD); m, magnitude of vector CD

lambda=CD/norm(CD);//m, Unit vector along CD
F=f*lambda;//m, Force 
// M_A=r_CA * F relation 3.7 from section 3.5
//i=1; j=1; k=1; Unit vectors along X, Y and Z direction respectively

// Componenets of moment M_A along X,Y and Z direction respectively
M_Ax=det([r_CA(2),r_CA(3); F(2), F(3)]);//N.m
M_Ay=-det([r_CA(1),r_CA(3) ; F(1),F(3)]);//N.m
M_Az=det([r_CA(1),r_CA(2) ;F(1), F(2)]);// N.m 

printf("Answer can be written as M_B = %.2f N.m i + %.2f N.m j + %.2f N.m k \n",M_Ax,M_Ay,M_Az);



