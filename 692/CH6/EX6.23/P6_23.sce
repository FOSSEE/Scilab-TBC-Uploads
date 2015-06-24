//Example 6.23
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform of w(n)  =((-0.5)^(n-2) +(0.2)^(n-1))*u(n)

syms n z ;
w1 = 4*(-0.5)^n
W1 = nusum(w1,n,0,%inf);
disp(W1,'ROC = |z|> 0.5 ,W1 = ');
w2 = 5*(0.2)^n
W2 = nusum(w2,n,0,%inf);
disp(W2,' ROC = |z|> 0.2 , W2 = ');
disp(W1+W2,'The Z-Transform is = ');
disp('ROC = |z|>0.5');