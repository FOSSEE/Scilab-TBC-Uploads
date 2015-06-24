//example 7.4


clear;
clc;

//Given:
T1=273;//[K]
T2=14273;//[K]
E1=-13.6;//Energy of ground state [eV]
k=8.617*10^-5;//Boltzmann constant[eV/K]
g2=8;//total no. of states with energy E2
g1=2;//total no. of states with energy E1


//To find the no. of atoms in first-excited singlet state
E2=E1/(2^2);//Energy for n=2 (i.e.E2=E1/n2)
x1=k*T1;
r1=(g2/g1)*exp(-(E2-E1)/x1);
x2=k*T2;
r2=(g2/g1)*exp(-(E2-E1)/x2);
disp(r1,'The fraction of atoms present in level n=2 at 273K is ');
disp("Therefore total 3*10^25 atoms we say   that all are present at ground     state");
printf("\n\nThe fraction of atoms present in level n=2 at 14273 is %f\n",r2);
x=r2*3*10^25;
disp(x,'Therefore no. of atoms in level n=2 is ');


