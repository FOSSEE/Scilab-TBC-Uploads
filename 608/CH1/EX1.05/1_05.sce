//Problem 1.05: A mass of 1000 kg is raised through a height of 10m in 20s. What is (a) the work done and (b) the power developed?

//initializing the variables:
M = 1000; // in Kg
h = 10; // in m
t = 20; // in sec
g = 9.81 // in m/s2

//calculation:
W = M*g*h
P = W/t

printf("\n\nResult\n\n")
printf("\nWork Done: %.0f Joule(J)\n",W)
printf("\nPower: %.0f watt(W)\n",P)