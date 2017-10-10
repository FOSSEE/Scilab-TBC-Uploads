clc;
//Drawing of shear and bending moment diagram
printf("Given problem is for drawing diagram, this diagram is drawn by step by step manner.\n ");
F_B=500;//N, force applied at B
F_C=500;//N, force applied at C.
F_DE=2400;//N/m, distributed load applied at D to E
AB=0.4;//m, perpendicular distance between A and B
BC=0.4;//m, perpendicular distance between C and B
CD=0.4;//m, perpendicular distance between C and D
DE=0.3;//m, perpendicular distance between E and D
F_E=F_DE*DE;//N, force exerted at DE/2 from E

//By free body of entire beam
//By sum(m_D)=0
A=(CD*F_C+(BC+CD)*F_B-F_E*DE/2)/(AB+BC+CD);//N, Reaction at A
//By sum(Fy)=0
Dy=F_C+F_B+F_E-A;//N,Y component of  Reaction at D
//By sum(Fx)=0
Dx=0;//N,Y component of  Reaction at D
//For section 1
//Applying sum(Fy)=0
V1=A;//N, shear force from A to B

//For section 2
//Applying sum(Fy)=0
V2=A-F_B;//N, shear force from B to C

//For section 3
//Applying sum(Fy)=0
V3=A-F_B-F_C;//N, shear force  from C to D

//For section 4
//Applying sum(Fy)=0
V4=A-F_B-F_C+Dy;//N, shear force At D

//For section 5
//Applying sum(Fy)=0
V5=0;//N, shear force at A
//Area under bending curve is change in bending moment of that 2 points
MA=0;//N.m
MB=MA+V1*AB;//N.m
MC=MB+V2*BC;//N.m
MD=MC+V3*CD;//N.m
ME=MD+1/2*V4*AB;//N.m


X=[0,0.4,0.4,0.8,0.8,1.2,1.2,1.5];
V=[V1,V1,V2,V2,V3,V3,V4,V5];//Shear matrix,

plot(X,V);//Shear diagram
X=[0,AB,AB+BC,AB+BC+CD,AB+BC+CD+DE];
M=[MA,MB,MC,MD,ME];//Bending moment matrix
plot(X,M,'r');//Bending moment diagram
