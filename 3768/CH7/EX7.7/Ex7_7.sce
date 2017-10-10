//Example number 7.7, Page number 148

clc;clear;
close;

//Variable declaration
epsilonr=1.0000684;     //dielectric constant
Na=2.7*10**25;   //number of atoms
x=1/(9*10**9);   
E=10**6;   //electric field(V/m)
e=1.6*10**-19;      //charge(c)
Z=2;    //atomic number
//Calculation
r0=((epsilonr-1)/(4*%pi*Na))**(1/3);     //radius of electron cloud(m)
X=x*E*r0**3/(Z*e);        //displacement(m)
//Result
printf("radius of electron cloud is %.2e m",r0)
printf("\n displacement is %.4e m",X)
