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

PT = 10                            //Example plaintext

printf("Plaintext: %d\n",PT)

C = modulo(PT^e,n)
printf("\nEncrypted Text Code: %d\n\n",C)

PT=1
for i = 1:d
    PT = modulo(PT*C,n)
end

printf("Decrypted Text: %d\n",PT)       //Conversion to plain text in ASCII
