printf('PCl5=PCl3+Cl2');
M0=208.5;
P=1;//pressure in atm//
w=4.59;//weight of PCl5 in grams//
V=1.7;//volume of PCl5 in gm^3//
T=523;//temperature in kelvin//
R=0.0821;//universal gas constant//
M=(w*R*T)/(P*V);
printf('\nMolecular weight of PCl5=M=%f',M);
a=(M0-M)/(M*(2-1));
printf('\na=%f',a);
Kp=(a^2*P)/(1-a^2);
printf('\nKp for the reaction=Kp=%f',Kp);
printf('\nIf total pressure is increased at the same temperature,Kp being constant,a should decrease.\nLet the degree of dissociation when P=2atm be a1 at the same temperature.');
P1=2;
a1=sqrt(Kp/(P1+Kp));
printf('\na1=%f',a1);//the answers in textbook are slightly different from what we got here but it's nothing wrong//
