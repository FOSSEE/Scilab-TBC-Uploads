
//Man-in-the-middle attack in Diffie-Hellman key exchange

n = 11                      //Large prime numbers
g = 7                       //which are public

printf("n: %d\ng: %d\n",n,g)

x_a = 3                     //Alice's x
x_t = 8                     //Tom's x
y_t = 6                     //Tom's y
y_b = 9                     //Bob's y

A_a = modulo(g^x_a,n)       //Alice's A 
A_t = modulo(g^x_t,n)       //Tom's A
B_t = modulo(g^y_t,n)       //Tom's B
B_b = modulo(g^y_b,n)       //Bob's B

disp("Before intrusion by Tom: ")
disp("For Alice:")
printf("x: %d\nA: %d\n",x_a,A_a)
disp("For Tom:")
printf("x: %d\ty: %d\nA: %d\tB: %d\n",x_t,y_t,A_t,B_t)
disp("For Bob:")
printf("y: %d\nB: %d\n",y_b,B_b)

A_b = A_t                   //Substituting Tom's A as A for Bob
B_a = B_t                   //Substituting Tom's B as B for Alice 
A_t = A_a                   //Changing Tom's A to Alice's A
B_t = B_b                   //Changing Tom's B to Bob's B

disp("After intrusion by Tom during exhange of keys: ")
disp("For Alice:")
printf("x: %d\nA: %d\tB: %d\n",x_a,A_a,B_a)
disp("For Tom:")
printf("x: %d\ty: %d\nA: %d\tB: %d\n",x_t,y_t,A_t,B_t)
disp("For Bob:")
printf("y: %d\nA: %d\tB: %d\n",y_b,A_b,B_b)



//Now, Tom can calculate separate keys for Alice and Bob

K1_a = modulo(B_a^x_a,n)        //Alice's key
K1_t = modulo(B_t^x_t,n)        //Tom's key for Bob
K2_t = modulo(A_t^y_t,n)        //Tom's key for Alice
K2_b = modulo(A_b^y_b,n)        //Bob's key

printf("\n\nKeys:\n")

disp("Alice''s key:")
printf("\tK1: %d\n\n",K1_a)
disp("Tom''s keys:")
printf("\nTo communicate with Alice\n\tK2: %d",K2_t)
printf("\nTo communicate with Bob\n\tK1: %d\n\n",K1_t)
disp("Bob''s key:")
printf("\tK2: %d",K2_b)

//We can see that K1_a == K2+t and K1_t == K2_b
//Thus, Tom can communicate with Alice using K2_t and with Bob using K1_t
//and easily carry out 

