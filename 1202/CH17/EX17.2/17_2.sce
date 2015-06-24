clear
clc

//Example 17.2
disp('Example 17.2')

Ts=1;//sampling time
K=2;
tau=1;
alpha=exp(-Ts/tau)
n=10;
y=zeros(n,1)
u=1; //input

for i=1:n
    y(i+1)=alpha*y(i)+K*(1-alpha)*u;
end

disp(y,'yk=')

mprintf("\n Note that in the book K=20 is wrong, it should be K=2\n...
 that is a first order function with gain 2 is given an input step")
