//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_13.sce

clc;
clear;
p1=12;
p2=8;
f=50;
printf("\n (a)")
printf("\n \t (i)Speed when cumulatively cascaded:")
N1=(120*f)/(p1+p2);
printf("\n \t       N=%d r.p.m",N1)
printf("\n \t (ii)Speed when differentially cascaded:")
N2=(120*f)/(p1-p2);
printf("\n \t       N=%d r.p.m \n",N2)

printf("\n (b)")
printf("\n  The ratio of power shared by the two motors=%d/%d \n",p1,p2)

printf("\n (c)")
printf("\n \t(i)First motor:")
Ns1=(120*f)/p1;
s1=(Ns1-N1)/Ns1;
sf1=s1*f;
printf("\n  Required frequency of voltage to be injected in rotor of first motor=%d Hz",sf1)
printf("\n \t(ii)Second motor:")
Ns2=(120*f)/p2;
s2=(Ns2-N1)/Ns2;
sf2=s2*f;
printf("\n  Required frequency of voltage to be injected in rotor of second motor=%d Hz",sf2)




