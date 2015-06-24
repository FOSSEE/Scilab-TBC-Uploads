clc;
//Drawing of shear and bending moment diagram
printf("Given problem is for drawing diagram, this diagram is drawn by step by step manner.\n ");

w=20;//kN/m, distributed load applied at D to E
AB=6;//m, perpendicular distance between A and B
BC=3;//m, perpendicular distance between C and B

F_B=w*AB;//kN, force exerted at AB/2 from A

//By free body of entire beam
//By sum(m_C)=0
RA=(F_B*(AB/2+BC))/(AB+BC);//kN, Reaction at A

//By sum(m_A)=0
RC=(F_B*(AB/2)/(AB+BC));//kN, Reaction at C

//For section 1
//Applying sum(Fy)=0
VA=RA;//N, shear force just to right to A

//For section 2
//Applying sum(Fy)=0
VB=VA-F_B;//kN, shear force just left to B

//For section 3
//Applying sum(Fy)=0
VC=VB;//kN, shear force  from B to C


//Bending moment at each end is zero
// Maximum bending moment is at D where V=0
VD=0;//kN

x=-(VD-VA)/w;//m, location of maximum bending moment
printf("Maximum bending moment is at D x= %.0f m from A\n",x);
MA=0;//kN.m
MD=MA+1/2*VA*x;//kN.m, maximum bending moment is at D
MB=MD+1/2*VB*(AB-x);//N.m
MC=MB+VB*BC;//N.m

printf("Maximum bending moment is at MD= %.0fkN. m from A\n",MD);
X=[0,x,AB,AB+BC];//m, 
V=[VA,VD,VB,VC];//kN,Shear matrix,

plot(X,V);//Shear diagram
X=[0,x,AB,AB+BC];//m
M=[MA,MD,MB,MC];//kN.m,Bending moment matrix
plot(X,M,'r');//Bending moment diagram
