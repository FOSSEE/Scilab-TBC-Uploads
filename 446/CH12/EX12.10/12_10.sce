clear
clc
disp('Exa-12.10(a)');
m40K=39.963999;         //mass of various particles
m40Ca=39.962591;
c2=931.5;                    //value of c^2 in MeV
Qb1=(m40K-m40Ca)*c2;       //Q value of the reaction
printf('The Q value for -VE beta emission is %.3f Mev \n',Qb1);
disp('Exa-12.10(b)');
m40K=39.963999;          //mass of various particles
m40Ar=39.962384;
me=0.000549;
Qb2=(m40K-m40Ar-2*me)*c2;         //Q value of the reaction
printf('The Q value for +VE beta emission is %.3f Mev \n',Qb2);
disp('Exa-12.10(c)');
m40K=39.963999;
m40Ar=39.962384;
Qec=(m40K-m40Ar)*c2;
printf('The Q value for +VE beta emission is %.3f Mev \n',Qec);