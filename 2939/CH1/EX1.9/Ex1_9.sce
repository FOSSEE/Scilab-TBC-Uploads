
//Ex1_9

clc;

//Given:

m=1/(6.023*10^23);//mass of 1 atom in g
m1=m*10^-3;//mass of 1 atom in Kg
c=3*10^8;// velocity in m/s
//solution:

e=m1*c*c; // energy in J
e1=e/(1.6*10^-13);// energy in MeV

printf("The energy in MeV is = %f ",e1)
