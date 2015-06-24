//laplace transform of unit function
syms t s 
y=laplace('1',t,s)
disp(y,"F(s)=")