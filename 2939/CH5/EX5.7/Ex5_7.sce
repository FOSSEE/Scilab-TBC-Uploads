
// Ex5_7
clc;

// Given:

Q1=9.28;// in Mev
Q2=0.21;// in Mev
Q3=7.25;// in Mev
Q4=3.63;// in Mev
mn=1.008665;
md=1.995311;// mass difference between Fe(56) & Fe(54)
// Solution:
E1=Q1+Q2+Q3+Q4;// part (a)
E2=(2*mn-md)*931;// part (b)

printf("The binding energy of last 2 neutron in part(a) and part(b) are = %f & %f in MeV respectively",E1,E2)


