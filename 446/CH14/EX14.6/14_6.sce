clear
clc
disp('Ex-14.6');
mpic2=135;        //mass ennergy of pi particle
Q=-mpic2;
mp=938;mpi=135;
Kth=(-Q)*((4*mp)+mpi)/(2*(mp));  //threshold energy
printf('The threshold kinetic energy is %.2f MeV',Kth);
