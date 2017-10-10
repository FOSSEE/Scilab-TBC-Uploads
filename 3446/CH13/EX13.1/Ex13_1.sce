// Exa 13.1
// To generate public and private keys for RSA algorithm.

clc;
clear all;

//Two prime numbers
p=5;
q=7;

//solution
n=p*q;
z=(p-1)*(q-1);
e=input("Choose _e_such that 1<e<z and e and n are coprime= ");
d=input("Choose _d_ such that e*d-1 should be exactly divisible by z= ");
printf('Public keys is (%d, %d)\n',n,e);
printf('Private key is (%d, %d)\n',n,d);

//Results
//Choose _e_such that 1<e<z and e and n are coprime= 5
//Choose _d_ such that e*d-1 should be exactly divisible by z= 29
//Public keys is (35, 5)
//Private key is (35, 29)
 
