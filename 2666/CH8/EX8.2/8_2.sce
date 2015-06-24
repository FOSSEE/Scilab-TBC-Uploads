clc
//initialisation of variables
p=14.7//psi
p1=100//psia
w=1334//lb
g=2544//in
i=37.06//percent
h=13.9//percent
q=1187.2//in
f=180.0//lb
//CALCULATIONS
A=(g*i)/(w*(q-f))*100//percent
R=A/h//lb
M=w/i//lb
//RESULTS
printf('the thermal efficiency of the prime mover=% f lb per ihp-hr',M)
