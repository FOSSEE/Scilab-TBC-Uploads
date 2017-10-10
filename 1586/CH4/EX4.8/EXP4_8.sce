clc;funcprot(0);//EXAMPLE 4.8
// Initialisation of Variables
U=[0 0 1];.......//Tensile stree direction in [001] plane
V1=[0 -1 1];......//Tensile stree direction of slip direction in [0-11] plane
V2=[1 1 1];......//Tensile stree direction of slip plane  normal  to[011] plane
rho1=3000;.......//Tensile stress of crystal in  psi
lam=acos((U*V1')/(norm(U)*norm(V1)));.......//The angle between the tensile stress direction [001] and  the slip direction [0-11] from the dot product
phy=acos((U*V2')/(norm(U)*norm(V2)));......//The angle between the tensile stress direction [001] and normal to the slip plane [111] 
rho=rho1*(cos(lam)*cos(phy));....//The resolved Shear stess in psi
disp(lam*(180/%pi),"The angle between the tensile stress direction [001] and  the slip direction [0-11]:")
disp(phy*(180/%pi),"The angle between the tensile stress direction [001] and normal to the slip plane [111]:")
disp(rho,"The resolved Shear stess in psi:")
