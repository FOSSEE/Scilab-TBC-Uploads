clear;
clc;
disp("--------------Example 30.7----------------")
p=7;
q=11;
n=p*q; // formula
phi=(p-1)*(q-1); // formula
e=13; 
d=1; // not actual 'd' value; it has to be computed
t=1;
P=5;
plaintext=P;
while t==1 do  // compute d such that d*e = 1 mod n
    if(modulo(e*d,phi)== 1)
        t=0;
    else
        d=d+1;
    end
end
 // encryption by Alice
C=modulo(P^e,n); // formula
printf("Alice sends the plaintext %d to Bob. She uses the public key %d to encrypt %d.\nBob receives the ciphertext %d and uses the private key %d to decipher the ciphertext.",P,e,P,C,d); // display the result

// decryption by Bob
P=modulo(C^d,n); // formula
printf("\n\nThe plaintext %d sent by Alice is received as plaintext %d by Bob.",plaintext,plaintext); // display the result
