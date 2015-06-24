clc;
//page 194
m1=80;//kg mass of man
m2=20;//kg, mass of ladder
m=m1+m2;//kg
g=9.81;//m/s^2 gravitational acceleration
W=-m*g;//N, j

C=-0.6*W/3;//N
Bz=-0.6*C/1.2;//N
By=-0.9*W/1.2;//N

printf(" Reaction At B is B= (%.0f) N j +(%.1f N)k\n",By,Bz);
printf(" Reaction At C is C= (%.2f) N k\n",C);  
Ay=-W-By;//N
Az=-C-Bz;//N


printf(" Reaction At A is A= (%.0f) N j +(%.1f N)k \n",Ay,Az); 

