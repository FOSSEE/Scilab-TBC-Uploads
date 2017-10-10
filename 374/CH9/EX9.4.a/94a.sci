//chapter 9 example 4a//
clc
clear
//angular velocity=A,llength at which rotating mirror from the photo detector=L,shadow pulse of width=We,shadow velocity=V,outer diametetr=do//
L=0.1;//in mts//
A=4;//in rad sec-1//
V=L*A;//in mts/sec//
printf("\n shadow velocity=%f m/sec\n",V)
We=250;//in micro seconds//
do=We*V;//outer diameter of the fibre//
printf("\n outer diamter of the fibre=%f micro meter\n",do)