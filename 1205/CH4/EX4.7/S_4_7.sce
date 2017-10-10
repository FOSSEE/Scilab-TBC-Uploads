clc;

m1=80;//kg mass of man
m2=20;//kg, mass of ladder
m=m1+m2;//kg
g=9.81;//m/s^2 gravitational acceleration
W=-m*g;//N, j

//Equillibrium equations
//At equillibrium +sum(F)=0, gives
// Ay j+ Az k+ By k+ Bz k + W j + C k=0
// i.e. (Ay + By +W)j+(Az+Bz+C)k=0
//At equillibrium +sum(M_A)=0, sum (r*F)=0
//1.2i*(By j + Bz k)+ (0.9 i -0.6 k)*(W j)+(0.6 i+3 j-1.2 k)*(C k)=0
//By rules of vector product it can be simply written as
//1.2Byk-1.2Bzj+0.9Wk+0.6Wi-0.6Cj+3Ci=0
//i.e (3C+0.6W)i -(1.2Bz+0.6C)j +(1.2By+0.9W)k=0
// Equating coeeficients of i, jand k to zero

C=-0.6*W/3;//N
Bz=-0.6*C/1.2;//N
By=-0.9*W/1.2;//N

printf(" Reaction At B is B= (%.0f) N j +(%.1f N)k\n",By,Bz);
printf(" Reaction At C is C= (%.2f) N j\n",C);  
Ay=-W-By;//N
Az=-C-Bz;//N


printf(" Reaction At A is A= (%.0f) N j +(%.1f N)k \n",Ay,Az); 

