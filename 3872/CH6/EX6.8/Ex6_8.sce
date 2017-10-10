//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.8
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

y=[15;50];                       //Constant coefficients in the equations
x=[4;9];                         //Initial values for x1 and x2

err=1;                           //Initialization of error value
tol=1e-4;                        //Tolerance value for Newton Raphson method
iter=0;                          //Initialization of iteration value

while err>tol
    temp=x;
    f=[x(1)+x(2);x(1)*x(2)]                     //Function Value
    dely=y-f;
    J=[1 1;x(2) x(1)];                          //Jacobian Matrix
    //Reduction of Jacobian using Gauss elimination
    Jg=[J(1,1) J(1,2);0 J(2,2)-J(2,1)/J(1,1)]   
    delyg=[dely(1);dely(2)-dely(1)*J(2,1)/J(1,1)]  
    //Solution using back substitution
    delx2=delyg(2)/Jg(2,2);
    delx1=(delyg(1)-Jg(1,2)*delx2)/Jg(1,1)
    delx=[delx1;delx2]
    x=x+delx
    err=max(abs((x(1)-temp(1))/temp(1)),abs((x(2)-temp(2))/temp(2)));
    iter=iter+1;  
    //Displaying first iteration results  
    if iter==1
        printf('Values of x1 and x2 at the end of first iteration are:\n')
        printf('       x1=%.4f and x2=%.4f\n\n',x(1),x(2))
    end
end
printf('The convergence criterion is satisfied at the %dth iteration\n',iter)
printf('The solution is x1=%.4f and x2=%.4f',x(1),x(2))

