// sum 8-4
clc;
clear;
Do=25;
// mean coil diameter D=25-d
W=150;
T=800;
G=81000;
// Substituting values in equation T=8*W*D/(%pi*(d^3))
// therefore, the equation becomes d^3 + 0.477*d = 11.936
//consider d=2.2mm, (d can be taken between 2.2-2.3mm)
d=2.337; //(nearest available wire gauge)
C=9.5;
D=22.2; 
Do=D+d;
Ks=1+(0.5/C);
Tmax=Ks*8*W*D/(%pi*(d^3));
// check for safety- Tmax<T;
Lo=100;
Ls=40;
//Lo=Ls+delta+0.15*delta
delta=(Lo-Ls)/1.15;
delta=50;
k=150/50;
Na=(G*d^4)/(8*(D^3)*k);

N=Na+2;
Ls=N*d;
Lo=Ls+(1.15*delta);

  // printing data in scilab o/p window
  printf("d is %0.3fmm ",d);
  printf("\n D is %0.2f mm",D);
  printf("\n Ls is %0.2f mm",Ls);
  printf("\n Lo is %0.2f mm",Lo);
  if (Do<=25)
    disp ('The diameter is within space constraints'); 
end