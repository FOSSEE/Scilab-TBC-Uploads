//Eg-4.1
//pg-139

clear
clc

A=[-3 0 1];
 xl=1;
 xu=3;
 fx=poly(A,'x','c')

//This  is used determine true root with less errors using bisection method
//input arguments--xl(lower bound of x),xu(upper bound of x),es(stopping criterion error),f(given function)
//output arguments--root(final value of x) obtained from my code,pre-percent relative error,itns-number of itertions used in the code

xrold=(xl+xu)/2;

//Verying whether in given interval,function are applicable for bisecion method

if horner(fx,xl)*horner(fx,xu)>0 then
    disp("there are more than 2 roots or no root ,so bisection method is not applicable")
elseif horner(fx,xl)*horner(fx,xu)==0 then
    disp("there is no need to apply any method since one of bound is a root")
elseif horner(fx,xl)*horner(fx,xrold)==0|horner(fx,xrold)*horner(fx,xu)==0 then
    disp("(xl+xu)/2 is the required root")
    
else
    //BISECTION METHOD  
    disp("The given function has only one root in the given interval ,so by applying bisection method root can be determined")
    test=horner(fx,xl)*horner(fx,xrold);
    if test<0 then
        xu=xrold;
    elseif test>0 then
        xl=xrold;
    else 
        root=xrold;
    end
    xrnew=(xl+xu)/2;
    ea=abs(xrnew-xrold)*100/abs(xrnew);
    pre(1,1)=ea;
    iter=1;
    itns(1,1)=1;
    i=1;
    while i<=10
        printf('\n\nIteration No. %i \n',i);
        printf('xlow=%f \n',xl);
        printf('xhigh=%f \n',xu);
        xrold=xrnew;
        test=horner(fx,xl)*horner(fx,xrold);
    if test<0 then
        xu=xrold;
    elseif test>0 then
        xl=xrold;
    else
        root=xrold;
        
end
    xrnew=(xl+xu)/2;
    fnew=horner(fx,xrnew);
    ea=abs(xrnew-xrold)*100/abs(xrnew);
    iter=iter+1;
    itns(iter,1)=iter;
    pre(iter,1)=ea;
    i=i+1;
     printf('xnew=%f \n',xrnew);
      printf('fnew=%f \n',fnew);
end
root=xrnew;//True root
end

