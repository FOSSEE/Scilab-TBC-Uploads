// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.2
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

rx=0.03;                     //Radius of conductor x in meter
ry=0.04;                     //Radius of conductor y in meter
N=3;
M=2;

Ddash=[4 4.3;3.5 3.8;2 2.3];               //Equivalent distances in meter to find Dxy 
Dx=[exp(-1/4)*rx 0.5 2;0.5 exp(-1/4)*rx 1.5;2 1.5 exp(-1/4)*rx];       //Equivalent distances in meter to find Dxx
Dy=[exp(-1/4)*ry 0.3;0.3 exp(-1/4)*ry];                                //Equivalent distances in meter to find Dyy

Dxyr=1;
for i=1:N
    for j=1:M
        Dxyr=Dxyr*Ddash(i,j)
    end
end
Dxy=nthroot(Dxyr,M*N);

Dxxr=1
for i=1:N
    for j=1:N
        Dxxr=Dxxr*Dx(i,j)
    end
end
Dxx=nthroot(Dxxr,N*N);

Dyyr=1
for i=1:M
    for j=1:M
        Dyyr=Dyyr*Dy(i,j)
    end
end
Dyy=nthroot(Dyyr,M*M);

Lx=2e-7*log(Dxy/Dxx);
Ly=2e-7*log(Dxy/Dyy);
L=Lx+Ly;

printf('The value of inductance in conductor x is, Lx=%3.2e H/m per conductor\n',Lx)
printf('The value of inductance in conductor y is, Ly=%3.2e H/m per conductor\n',Ly)
printf('The value of total inductance is, L=%3.2e H/m per circuit',L)
