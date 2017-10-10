//ex-4
//Calculating amount of an element formed from an alloy
clc
M=10;//Mass of alloy AB given (in g)
p=25;//Percentage of A in AB
w1=(p/100)*M;//Weight of A in AB (in g)
w2=M-w1;//Weight of B in AB (in g)
w3=w2/3;//Weight of B separated out on cooling in eutectic (in g)
ans=w2-w3;//Original amount-Amount in eutectic (in g)
printf("Amount of B formed = %.1f g.",ans);
