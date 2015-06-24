clear;
clc;
printf("\n Example 3.5");
//rate of dissolution of salt
function[x]=dissolution(d)
   x = (3*10^(-6))-(2*10^(-4)*3.406*10^(5)*d^2);
   funcprot(0)
endfunction

//rate of falling of the particle in stokes law region
function[y]=rate_h(d)
    y = 3.406*d^(2)/(-3*10^(-6)-68.1*d^2);//y is in m/sec
    funcprot(0);
endfunction

printf("\n By trial and error the solution for d is 0.88 mm");
printf("\n The rate of dissolution is %f ",dissolution(8.8*10*(-4)));
printf("\n The rate of falling of the particle is %f m/sec",rate_h(8.8*10^(-4)));


