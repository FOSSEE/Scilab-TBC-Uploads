clear
clc
disp('Exa-13.4(a)');
m2H=2.014102;    //mass of various particles
mn=1.008665;m63Cu=62.929599;
m64Zn=63.929145;c2=931.5;     //c^2=931.5 MeV
Q=(m2H+m63Cu-mn-m64Zn)*c2;       //Q of the reaction
printf('The value of Q is %f MeV\n',Q);
disp('Exa-13.4(b)');
Kx=12.00;Ky=16.85;
Ky=Q+Kx-Ky              //kinetic energy of 64Zn
printf('The value of Ky was found out to be %.2f MeV',Ky);