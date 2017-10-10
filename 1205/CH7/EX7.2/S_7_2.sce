clc;
//Drawing of shear and bending moment diagram
printf("Given problem is for drawing diagram, this diagram is drawn by step by step manner.\n ");
F_A=-20;//kN, force applied at A
F_C=-40;//kN, force applied at C
AB=2.5;//m, perpendicular distance between A and B
BC=3;//m, perpendicular distance between C and B
CD=2;//m, perpendicular distance between C and D
//By free body of entire beam
//By sum(m_D)=0
R_B=-(CD*F_C+(AB+BC+CD)*F_A)/(BC+CD);//kN, Reaction atB
//By sum(m_A)=0
R_D=-(BC*F_C-(AB)*F_A)/(BC+CD);//kN, Reaction atB
//For section 1
//Applying sum(Fy)=0
V1=F_A;//kN
//Applying sum(M1)=0
M1=V1*0;//kN.m

//For section 2
//Applying sum(Fy)=0
V2=F_A;//kN
//Applying sum(M1)=0
M2=F_A*AB;//kN.m

//For section 3
//Applying sum(Fy)=0
V3=R_B+F_A;//kN
//Applying sum(M1)=0
M3=F_A*AB;//kN.m

//For section 4
//Applying sum(Fy)=0
V4=R_B+F_A;//kN
//Applying sum(M1)=0
M4=F_A*(AB+BC)+R_B*BC //kN.m

//For section 5
//Applying sum(Fy)=0
V5=R_B+F_A+F_C;//kN
//Applying sum(M1)=0
M5=F_A*(AB+BC)+R_B*BC//kN.m

//For section 6
//Applying sum(Fy)=0
V6=R_B+F_A+F_C;//kN
//Applying sum(M1)=0
M6=V6*0//kN.m
X=[0,2.5,2.5,5.5,5.5,7.5]
V=[V1,V2,V3,V4,V5,V6];//Shear matrix
M=[M1,M2,M3,M4,M5,M6];//Bending moment matrix
plot(X,V);//Shear diagram
plot(X,M,'r');//Bending moment diagram
