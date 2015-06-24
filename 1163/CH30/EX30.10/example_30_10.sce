clear;
clc;
disp("--------------Example 30.10----------------")
g=7;
p=23;
printf("\nThe steps are as follows:\n\n");
x=3;
y=6;
R1=modulo(g^x,p); // formuula
R2=modulo(g^y,p); // formula
printf("1) Alice chooses x = %d and calculates R1 = %d.\n\n2) Bob chooses y = %d and calculates R2 = %d.\n\n3) Alice sends the number %d to Bob.\n\n4) Bob sends the number %d to Alice.\n\n",x,R1,y,R2,R1,R2);

K_Alice=modulo((R2)^x,p); // K calculated by Alice
K_Bob=modulo((R1)^y,p); // K calculated by Bob
K=modulo(g^(x*y),p);  // The symmetric (shared) key in the Diffie-Hellman protocol
printf("5) Alice calculates the symmetric key K =%d.\n\n6) Bob calculates the symmetric key K = %d.\n\n",K_Alice,K_Bob);

// check if the key values are equal and display appropriate result
if( K_Alice == K_Bob )
    printf("The value of K is the same for both Alice and Bob. The symmetric key K = %d.",K);
else
    printf("The value of K is not the same for both Alice and Bob. It is %d for Alice and %d for Bob.",K_Alice,K_Bob);
end
