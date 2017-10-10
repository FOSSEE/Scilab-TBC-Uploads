// RSA Encryption scheme

p = 7                      //Large prime numbers
q = 17                     //Small values taken here for convenience of calculation
                           //and explanation

n = p*q
z = (p-1)*(q-1)

e = 5                              // e<n and e & z are coprime 

i=1
d = i                       
while(1==1)                        //Calcualtion of 'd' from e and z
    if modulo(i*e,z)==1 then       // (e*d)mod z = 1
        d=i
        break
    end
    i=i+1
end

printf("\nPublic Key: (%d,%d)\nPrivate Key: (%d,%d)\n\n",n,e,n,d)

PT = 'F'                            //Example plaintext in ASCII
P = ascii(PT)-ascii('A')+1          //Conversion of ASCII to integer code 
                                    //(A=1,B=2,C=3, ... )
printf("Plaintext: %s\n",PT)
printf("Plain text Integer code: %d\n\n\",P)

C = 1
for i = 1:e
    C = modulo(C*P,n)
end

C = modulo(C,n)
printf("Encrypted Text Code: %d\n\n",C)

P=1
for i = 1:d
    P = modulo(P*C,n)
end

PT = ascii(ascii('A')+P-1)
printf("Decrypted Text Code: %d\n",P)   //Decryoted code
printf("Decrypted Text: %s\n",PT)       //Conversion to plain text in ASCII
