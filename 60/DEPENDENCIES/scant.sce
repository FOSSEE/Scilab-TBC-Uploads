function [x]=secant(a,b,f)
    N=100;             // define max. no. iterations to be performed
    PE=10^-4           // define tolerance for convergence
     for n=1:1:N       // initiating for loop
        x=a-(a-b)*f(a)/(f(a)-f(b));  
        if abs(f(x))<=PE then break; //checking for the required condition
        else a=b;
            b=x;
        end     
     end
     disp(n," no. of iterations =") //
endfunction