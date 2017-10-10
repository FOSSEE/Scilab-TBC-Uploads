//Calculating shear stress 
clc;
mu=.048;
sg=.913;
V0= 0 ; //at y=0 
Vi=1.125; //at y=0.075 
//For Linear Velocity Distribution 
disp('For Linear Velocity Distribution')
K=1.125/0.075 ; // V=15y so dv/dy= 15
tau=mu*K; //tau= shear stress 
disp ( tau,'Shear stress (N/m2) = ')

// For parabolic velocity Distribution 
disp('For parabolic velocity Distribution')
disp ( 'V = A + By + Cy^2' )
// Boundary Conditions : V=0 at y=0 , V=1.125 at y=0.075 , dV/dy = 0 at y=0.075 
A=0 ;
A1= [ 0.075 0.075*0.075 ;1 0.15 ]
B1=[-1.125 ; 0 ]
[X,ker]=linsolve(A1,B1)
B=X(1,1);
C=X(2,1)
y = poly(0,'y');
V=poly([A B C ],'y','c');
disp(V,' V=');
V1= derivat(V)
disp(V1 , 'dV/dy = ')
