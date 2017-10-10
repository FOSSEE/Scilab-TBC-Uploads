clc;

//Cross product i*j=k, k*j=-i, j*j=0.......1
//Let say cross product r*f as M
r1=[0,0,0];//m
F1=-180;//N, j
M1=[0,0,0];//kN.m

r2=[3,0,0];//m, i
F2=-54;//N j
M2=[0,0,r2(1)*F2];//kN k

r3=[3,0,1.5];//m
F3=-36;//N,j
M3=[-r3(3)*F3,0,r3(1)*F3];//kN.m

r4=[1.2,0,3];//m
F4=-90;//N,j
M4=[-r4(3)*F4,0,r4(1)*F4];//kN.m

R=F1+F2+F3+F4;//kN, resultant force
M_RO=M1+M2+M3+M4;//kN.m 

//r*R=M_RO
//r=xi+zk
//R*x k-R*z i=M_RO
x=M_RO(3)/R;//m,
z=-M_RO(1)/R;//m

printf("Resultant of given system of forces is R= %.2f kN at x= %.2f m, z=%.2f m \n",R,x,z);
