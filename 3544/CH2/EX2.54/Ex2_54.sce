// Diffie-Hellman key exchange

n = 11                  // Two prime numbers
g = 7					//need not be kept secret 
printf("n: %d\ng: %d\n",n,g)

x = 3                   // Alice's secret random number
A = modulo((g^x),n)     // Alice's message to Bob
                        //A  =  2
 
y = 6                   // Bob's secret random number
B = modulo((g^y),n)     // Bob's message to Alice
                        //B  =  4  

printf("x: %d\ny: %d\nA: %d\nB: %d\n",x,y,A,B)
 
K1 = modulo((B^x),n)    // Alice's key
						//K1  =  9  
 
K2 = modulo((A^y),n)    // Bob's key
                        //K2  =  9  
printf('Alice''s Key %d\n',K1)
printf('Bob''s Key %d',K2)
 // K1 = K2, thus both Alice and Bob have the same key 
