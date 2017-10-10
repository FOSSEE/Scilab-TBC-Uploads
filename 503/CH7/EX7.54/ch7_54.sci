//to find speed and ratio of mech o/p

clc;
V=400;
Ra=.25;
Ia1=25;
Ea1=V-Ra*Ia1;
n1=1200;
Rr=2.75;
Ia2=15;
Ea2=V-(Ra+Rr)*Ia2;
phi=.7;    //phi=(phi(15)/phi(25))
n2=(Ea2/Ea1)*n1/phi;
disp(n2,'speed(rpm)');

Po2=Ea2*Ia2;
Po1=Ea1*Ia1;
disp(Po2/Po1,'ratio of mech o/p');
Ia=120;    //Ia is constant indep of speed
disp(Ia,'Ia(A)');