//RSA algorithm example

p = 47
q = 71

n = p*q
z = (p-1)*(q-1)

e = 79                              // E<N and E & Z are coprime 

i=1
d = i

//Brute-force approach to find 'd'
while(1==1)                         
    if modulo(i*e,z)==1 then       // (E*D)mod Z = 1
        d=i
        break
    end
    i=i+1
end

printf("%d",d)

//Public key: (n,e)
//Privae key: (n,d)
printf("\nPublic Key: (%d,%d)\nPrivate Key: (%d,%d)\n\n",n,e,n,d)


P = 688                         //Plaintext
printf("Plaintext: %d\n",P)

C = 1                           //Encrypted Text
for i = 1:e
    C = modulo(C*P,n)
end

printf("Encrypted Text: %d\n",C)

P=1                             //Decrypting the encypted text 'C'
for i = 1:d
    P = modulo(P*C,n)
end

printf("Decrypted Text: %d\n",P)
