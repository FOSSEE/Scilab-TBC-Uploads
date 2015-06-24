//Chapter_3 Generalized Performance Characteristics Of Instruments
//Caption:Gaussian Distribution
// Example 1
clc;
close;
disp("me=7")
disp("stddev=0.5")
disp("x = 6  ")
disp("y= 7.5")
me=7 ;
stddev=0.5;
x = 6  //('enter the lower limit of the range=:')
y= 7.5  //('enter the upper limit of the range=:')
n= 200  //('enter the number of samples=:')
disp("using    k =abs((x-me)/((2^0.5)*stddev));")
k =abs((x-me)/((2^0.5)*stddev));
printf('Value of eta1 is %1.2f \n',k)

p=abs((y-me)/((2^0.5)*stddev));
printf('Value of eta2 is %1.2f \n',p)
//Using the gaussian probability error function table, find the error function corresponding to the value of k and p
//LET IT BE s
s= 0.95  // ('enter the error function corresponding to k value=:')
F(x)=(1/2)+(1/2*s);// Probability of having lengths less than x
l= 0.68   // ('enter the error function corresponding to p value=:')
F(y)=(1/2)+(1/2*l);// Probability of having lengths less than y

printf('probability of having length less than 6 cm is %1.3f ',F(x));
printf('probability of having length less than 67.5cm is %1.3f ',F(y));

P(x)=abs(F(y)-F(x));
printf("Number of samples in the given length range=")
m=(n*P(x));
disp(m);










