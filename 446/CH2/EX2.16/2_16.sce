clear    
clc
disp('Exa-2.16');
K=325; mkc2=498;  //kinetic energy and rest mass energy of kaons
mpic=140; //given value
Ek=K+mkc2; 
pkc=sqrt(Ek^2-mkc2^2); 
//consider the law of conservation of energy which yields Ek=sqrt(p1c^2+mpic^2)+sqrt(p2c^2+mpic^2)
// The above equations (4th degree,hence no direct methods)can be solved by assuming the value of p2c=0.
p1c=sqrt(Ek^2-(2*mpic*Ek));
//consider the law of conservation of momentum. which gives p1c+p2c=pkc implies
p2c=pkc-p1c;
k1=(sqrt(p1c^2+(mpic^2))-mpic); //corresponding kinetic energies
k2=(sqrt((p2c^2)+(mpic^2))-mpic);
printf('The corresponding kinetic energies of the pions are %.0f MeV and %.1f MeV.',k1,k2);