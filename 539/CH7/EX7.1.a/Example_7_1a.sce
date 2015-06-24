//Resolved Shear Stress Computations

clear;
clc;

printf("\tExample 7.1\n");

x=[1 1 0];    //Indices of Plane
y=[0 1 0];    //direction of applied tensile stress
z=[-1 1 1];   //Direction of shear stress

function[angle]=dotproduct(a,b)
    num=(a(1)*b(1))+(a(2)*b(2))+(a(3)*b(3));
    den=sqrt((a(1)^2+a(2)^2+a(3)^2)*(b(1)^2+b(2)^2+b(3)^2));
    angle=acos(num/den);
    funcprot(0)
endfunction

phi=dotproduct(x,y);
lambda=dotproduct(y,z);

printf("\nAngles phi is %.1f degree and lambda is %.1f degree\n",phi*180/%pi,lambda*180/%pi);


//When a tensile stress of 52 MPa (7500 psi) is applied
printf("\n\tPart A\n");
sigma=52;  //in MPa
tr=sigma*cos(phi)*cos(lambda);
printf("Resolved shear stress is %.1f MPa\n",tr);

//End