clear
clc
disp('Exa-13.5(a)');
mp=1.007825;m3H=3.016049;    //mass of the particle
m2H=2.014102;c2=931.5;      //constant
Q=(mp+m3H-(2*m2H))*c2;     //Q of thereaction
printf('The value of q was found out to be %f MeV\n',Q);
disp('Exa-13.5(b)');
Kth1= -Q*(1+(mp/m3H));        //threshold energy of kinetic energy
printf('The threshold kinetic energy in case-1 is %f MeV\n',Kth1);
Kth2=-Q*(1+(m3H/mp));        //threshold kinetic energy in case2
printf('The threshold kinetic energy in case-2 is %f MeV',Kth2);