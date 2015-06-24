//to find the mean,deviations from the mean, Average deviation, standard deviation and variance

clc;
x=[532 548 543 535 546 531 543 536];
X=sum(x);
n=8; 
a=0;
Mean=X/n;
disp(X/n,'mean (kHZ)');
for i=1:n,
d(i)=x(i)-Mean
    disp(d(i),'deviations =')
  a=a+(abs(d(i)))
   end 
   d_average=a/n;
disp(d_average,'Average deviation (kHz)=')
d_2=sum(d^2);
s=sqrt(d_2/(n-1))
disp(s,'standard deviation(kHz)');
V=s^2;
disp(V,'varaince (kHZ)2=')
