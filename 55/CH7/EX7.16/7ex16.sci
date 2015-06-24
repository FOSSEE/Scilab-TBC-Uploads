u=3;                //mean of distribution of random variable X
x=[0,1,2,3,4,5,6];   //values of X in the distribution as x where it is the number of times heads occurs when a coin is tossed six times
p=[1/64,6/64,15/64,20/64,15/64,6/64,1/64];  //probabilities of occurrence of each value of X (x) in the distribution such that 1/64 gives the probability of occurrence of no heads at all,6/64 gives that of occurrence of heads for only one time and so on
k=0;
for i=1:7;
k=k+((x(i)-u)^2)*p(i);
end
disp(k,'Variance of X is')
s=sqrt(k);
disp(s,'Standard deviation of X is')

u=0.75;   //mean 
x=[0,1,2,3];  //values of random variable X as x in the probability distribution of X
p=[84/220,108/220,27/220,1/220];   //probability of values in x which appear in distribution table of X
g=0;
for i=1:4;
g=g+((x(i))^2)*p(i);
end
h=g-(u*u);                          
disp(h,'variance of X is')
sd=sqrt(h);
disp(sd,'Standard deviation for X')