clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 6.8.2\n')
//given data
m1=250;m2=100//mass of two blocks in Kgs
c1=80;c2=60,c=20//damping coefficients in N-sec/m
F1=1000;F2=1500//amplitude of force acting on block 1 and 2 rsptly
k=250000//stiffness of spring in N/m
W=60//frequency of applied force in rad/sec
//calculations
M=[m1,0;0,m2];
K=[k,-k;-k,k];
C=[c+c1,-c;-c,c+c2];
R=[F1;F2;0;0];
X=K-(W^2)*M
Y=W*C
G=[X,-Y;Y,X]
AB=inv(G) *R//from Eqn6.8.4 in Sec 6.8
X1=sqrt(AB(1,1)^2 +AB(3,1)^2)
X2=sqrt(AB(2,1)^2 +AB(4,1)^2)
//output
mprintf('The amplitude of vibrations are %fm for mass 1 and %fm for mass 2',X1,X2)
