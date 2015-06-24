clc;
W=-1200;//N,j  Weight 
BD=[-2.4,1.2,-2.4];//m, Vector BD
EC=[-1.8,0.9,0.6];//m, Vector EC
//T_BD=norm(T_BD)*BD/norm(BD);// m, vector of tension in BD
//T_EC=norm(T_EC)*EC/norm(EC);// m, vector of tension in EC
// Applying equillibrium conditions we get
// Sum_F=0, and Sum(M_A)=0 and setting co-efficient equal to zero
A=[0.8,0.771;1.6,-0.514];//MAtrix of co-efficient
b=[-1440;0];//matrix b
x=linsolve(A,b);// solution matrix
T_BD=x(1);// N,Tension in BD
T_EC=x(2);//N, Tension in EC
printf("T_BD= (%.0f N) and T_EC= (%.0f N) \n",x(1),x(2));

Ax=2/3*T_BD+6/7*T_EC;//N, x component of reaction at A
Ay=-(1/3*T_BD+3/7*T_EC+W);//N, Y component of rection at A
Az=2/3*T_BD-2/7*T_EC;//N, z component of reaction at A

printf("Reaction at A is A=(%.0f N)i +(%.0f N)j +(%.1f N)k \n",Ax,Ay,Az);
//Answe in Newton instead of lbs
//1lbs=4.44N
