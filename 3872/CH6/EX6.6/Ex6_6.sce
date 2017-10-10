//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.6
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

//Solution for x^2=9 using Newton Raphson method:
err=1;
iternr=0;                   //Initial iteration value for Newton Raphson method
tol=1e-4;                   //Tolerance value for Newton Raphson method
xn=1;                       //Initial value for x for Newton Raphson method

while err>tol
     temp=xn;
     J=2*xn;                  // Jacobian Matrix
     xn=xn+inv(J)*(9-xn^2);
     err=abs((xn-temp)/temp)
     iternr=iternr+1;
end

//Solution for x^2=9 using Gauss–Seidel method
err=1;
D=3;
itergs=0;                  //Initial iteration value for Gauss Seidal method
xg=1;                      //Initial value for x for Gauss Seidal method

while err>tol & itergs<iternr+1
    temp=xg;
    xg=xg+inv(D)*(9-xg^2)
    err=abs((xg-temp)/temp)
    itergs=itergs+1
end
printf('SOLUTION USING NEWTON RAPHSON METHOD:\n')
printf('The convergence criterion is satisfied at the %dth iteration\n',iternr)
printf('The solution is x=%.4f\n\n',xn)

printf('SOLUTION USING GAUSS SEIDEL METHOD:\n')
printf('The value for x at the end of %dth iteration\n',itergs)
printf('is obtained as x=%.4f\n\n',xg)

printf('COMPARISON:\n')
if itergs>iternr
    printf('Gauss Seidel method takes more time to converge')
else
    printf('Newton Raphson method takes more time to converge')
end
