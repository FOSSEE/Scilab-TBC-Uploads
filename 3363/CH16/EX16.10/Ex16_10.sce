//Example 16.8, page 615
clc
n=(1/10)/(54*1.66*10^-27)
d_ohm=10^-5/(10^-1)**2
d_zigma=(1.3*10^-3)*10^-31//m2/nucleus
P=d_zigma*n
//disp(P)
I=(10^-7)/(1.6*10^-19)
//disp(I)
dN=I*P
printf("\n The number of events detected per sec is s %d",dN)
//The answer differnce is because of round off
