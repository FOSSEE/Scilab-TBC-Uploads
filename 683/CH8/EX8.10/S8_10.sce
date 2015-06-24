// sum 8-10
clc;
clear;
A=1783;
m=0.190;
d=1.5;
D=15;
M=300;
E=20800;
k=30;
//sigult= ultimate strength of the material
// sigy= yield strength of the material
sigult=A/(d^m);
sigy=0.7*sigult;
//siga= allowable yield strength of the material
siga=sigy/2;
C=D/d;
Ki=(4*(C^2)-C-1)/(4*C*(C-1));
Z=%pi*(d^3)/32;
//sigb=bending strength of the material;
sigb=Ki*M/Z;
while (sigb>=siga) 
    d=d+0.15;
    D=15;
    C=D/d;
    sigult=A/(d^m);
sigy=0.7*sigult;
siga=sigy/2;
Ki=(4*(C^2)-C-1)/(4*C*(C-1));
Z=%pi*(d^3)/32;
sigb=Ki*M/Z;
end
d=2;// rounding off the value of the diameter.
D;
Na=(d^4)*E/(64*D*k);

  // printing data in scilab o/p window
  printf("d is %0.1f mm ",d);
  printf("\n D is %0.1f mm ",D);
  printf("\n Na is %0.2f mm ",Na);