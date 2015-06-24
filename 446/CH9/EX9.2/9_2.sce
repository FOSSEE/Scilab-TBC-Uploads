clear
clc
disp('Exa-9.2(a)');
K=1.44; Req=0.236; // K=e^2/(4*pi*e0)=1.44 eV.nm
Uc=-K/(Req);        //coulomb energy
printf('The coulomb energy at an equilirium separation distance is %.2f eV\n',Uc);
E=-4.26; delE=1.53;    //various standars values of NaCl
Ur=E-Uc-delE; 
printf('The pauli''s repulsion energy is %.2f eV\n',Ur);
disp('Exa-9.2(b)');
Req=0.1;         //pauli repulsion energy
Uc=-K/(Req);
E=4; delE=1.53;
Ur=E-Uc-delE;
printf('The pauli''s repulsion energy respectively is is %.2f eV\n',Ur);