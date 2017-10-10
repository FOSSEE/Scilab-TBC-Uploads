clc//
//
//

//Variable declaration
e=1.6*10^-19;     //charge(coulomb)
h=6.6*10^-34;     //planck's constant(J sec)
c=3*10^8;     //velocity of light(m/sec)
lamda=6943*10^-10;     //wavelength(m)
k=8.61*10^-5;
T=300;    //temperature(K)

//Calculation
dE=h*c/(e*lamda);
N2byN1=exp(-dE/(k*T));     //relative population

//Result
printf("\n relative population is %0.4f *10^-30",N2byN1*10^30)
printf("\n answer given in the book is wrong")
