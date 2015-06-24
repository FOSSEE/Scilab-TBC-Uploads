function[t] = Students_t_Var_Unknown(X1,X2,Sigma1,Sigma2,n1,n2)
u1 =0;
u2 =0;
Sp =  ((n1-1)*Sigma1+(n2-1)*Sigma2)/(n1+n2-2)
disp(Sp,'Sp=')
Sigma = sqrt(Sp*((1/n1)+(1/n2)));
disp(Sigma,'Sigma=')
t = ((X1-X2)-(u1-u2))/Sigma;
endfunction