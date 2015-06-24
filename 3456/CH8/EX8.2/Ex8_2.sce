//Example 8.2
//True Strain
//Page No. 288
clc;clear;close;

//case 1
Af=100;                 //in mm^2
Lf=60;                  //in mm
A0=150;                 //in mm^2
L0=40;                  //in mm
ef1=log(Lf/L0);
ef2=log(A0/Af);
printf('\nTrue Strain to fracture using changes in length = %g\nTrue Strain to fracture using changes in area = %g',ef1,ef2);

//Case 2
Lf=83;                    //in mm
L0=40;                   //in mm
Df=8;                      //in mm
D0=12.8;                    //in mm
ef1=log(Lf/L0);
ef2=2*log(D0/Df);
printf('\n\n\nFor More ductile metals\nTrue Strain to fracture using changes in length = %g\nTrue Strain to fracture using changes in diameter = %g',ef1,ef2);
