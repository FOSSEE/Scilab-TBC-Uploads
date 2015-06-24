
//Example No.6.2.
//Page No.185.
clc;clear;
a1 = 0.332*10^(-9);//Lattice parameter for BCC structure -[m].
a2 = 0.296*10^(-9);//Lattice parameter for HCP structure -[m].
c = 0.468*10^(-9);// -[m]
disp('BCCv is the volume of BCC unit cell');
BCCv = a1^(3);//Volume of BCC unit cell.
printf("\nThe volume of BCC unit cell is %3.3e m^-3",BCCv);
disp('HCPv is the volume of HCP unit cell');
HCPv = (6*(sqrt(3)/4)*a2^(2)*c);//Volume of HCP unit cell.
printf("\nThe volume of HCP unit cell is %3.3e m^3",HCPv);
Cv = (HCPv-BCCv);
printf("\nThe change in volume is %3.3e",Cv);
Vp = (Cv/BCCv)*100;
printf("\nThe volume change in percentage is %.1f percent",Vp);
