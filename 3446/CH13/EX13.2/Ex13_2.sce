// Exa 13.2
// To determine secret encrypting key K using DH key exchange algorithm.

clc;
clear all;

p=23; //prime number that both parties agreed upon
g=5;// g is primitive mod p
a=6;  //party A choosen number
b=15;  //party B choosen number

//solution
printf('Party A sends to party B as (g^a mod p) = %d \n',modulo(g^a,23));
printf(' Party B sends to party A as (g^b mod p) = %d \n',modulo(g^b,23));
printf(' Party A computes secret key as ((g^b modp)^a mod p) = %d \n',modulo(modulo(g^b,23)^a,p));
printf(' Party B computes secret key as ((g^a modp)^b mod p) = %d \n',modulo(modulo(g^a,23)^b,p));
disp("Thus both parties uses k=2 as secret key for encryption");
