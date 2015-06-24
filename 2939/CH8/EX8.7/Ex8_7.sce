
// Ex8_7
clc;

// Given:

ma=9728;// cpm
mb=11008;// cpm
mab=20032;// cpm

// Solution:

t1=(ma+mb-mab)/(mab^2-ma^2-mb^2);// in min

t2=t1*60;// in seconds
t=t2*1000000;// in microseconds
printf("\n The resolving time of the given system in microseconds is = %f",t)

//From true count rate equation we have, n=muk/(1-muk*t).
// This implies, n-m=m^2*t where n-m corresponds to counting loss
na=ma^2*t1;// For sample A
nb=mb^2*t1;// For sample B
nab=mab^2*t1;// For sample AB

printf("\n \n The counting loss of sample A is = %f cpm",na)

printf("\n \n The counting loss of sample B is = %f cpm",nb)

printf("\n \n The counting loss of sample AB is = %f cpm",nab)
// NOTE: The resolving time of the given system in microseconds is give 222.7. This is a calculation error in the textbook.
