clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-12.8 Page No.272\n');

Ng=42;
Np=24;
Q=2*Ng/(Ng+Np);

Kg=270;
Dp=1.5;
b=1;

Fw=Dp*b*Q*Kg;
Fd=699;
Nsf=1.2;

if (Fw/Nsf)<Fd then
    mprintf('\n (Fw/Nsf)<Fd So this would not be suitable design');
end

//If the surfaces each had a BHN = 450

Kg=470;
Fw=Dp*b*Q*Kg;

if(Fw/Nsf)>Fd then
    mprintf('\n\n If the surfaces each had a BHN = 450');
    mprintf('\n (Fw/Nsf)>Fd So this would be suitable design.');
end
