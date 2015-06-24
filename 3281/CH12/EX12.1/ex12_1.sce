//Page Number: 649
//Example 12.1
clc;
//Given
Is=0.1*(10^-6); //A
Pi=0; //dBm
Cs=0.1*(10^-12); //F
Ls=2*(10^-9);
Cj=0.15*(10^-12); //F
Rs=10; //ohm
T=293; //K
nktbye=25*(10^-3); //V

//Rj
Rj=(nktbye/Is);
disp('Kohm',Rj/1000,'Rj:');

//Bi
Bi=nktbye/2;
Bii=Bi*1000;
disp('A/W',Bii,'Bi:');

//Bv
Bv=Rj*Bii;
disp('V/W',Bv,'Bv:');
