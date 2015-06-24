function [x]=secant64(a,b,f,fp)
    N=100;             // define max. no. iterations to be performed
    PE=10^-15           // define tolerance for convergence
     for n=1:1:N       // initiating for loop
        x=(b*f(a)*fp(b)-a*f(b)*fp(a))/(f(a)*fp(b)-f(b)*fp(a));  
        if abs(f(x))<=PE then break; //checking for the required condition
        else a=b;
            b=x;
        end     
     end
     disp(n," no. of iterations =") //
endfunction