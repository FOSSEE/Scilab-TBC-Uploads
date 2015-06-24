clc
n=input('Enter the value of n ");
p=integrate('(tan(x))^(n-1)','x',0,%pi/4)  
q=integrate('(tan(x))^(n+1)','x',0,%pi/4)  
disp('n(p+q)=')
disp(n*(p+q))