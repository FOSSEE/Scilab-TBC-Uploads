function [x]=secant65(a,b,f)
    deff('[y]=g(x)','y=-f(x)^2/(f(x-f(x))-f(x))'); 
    N=4;             // define max. no. iterations to be performed
    PE=10^-15           // define tolerance for convergence
     for n=1:1:N       // initiating for loop
        x=a-(b-a)*g(a)/(g(b)-g(a));  
        if abs(f(x))<=PE then break; //checking for the required condition
        else a=b;
            b=x;
        end     
     end
     disp(n," no. of iterations =") //
endfunction