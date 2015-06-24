clear
clc
// Given
//t1=30 min ;T1=336 k;
//t2=15 sec ;T2=347 k;
// Converting t2 in min
t1=30;T1=336;t2=0.25;T2=347
R=8.314;
//log(t1/t2)=E(1/T1-1/T2)/R
E=(log(t1/t2)*R)/(1/T1-1/T2);
printf("\nRESULT\n")
printf("E(J/mol) is %f",E)