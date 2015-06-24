//Example No. 9_10
//Splines
//Pg No. 301
clear ; close ; clc ;

x = poly(0,'x');
function isitspline(f1,f2,f3,x0,x1,x2,x3)
    n1 = degree(f1),n2 = degree(f2),n3 = degree(f3)
    n = max(n1,n2,n3)
    f1_x1 = horner(f1,x1)
    f2_x1 = horner(f2,x1)
    f2_x2 = horner(f2,x2)
    f3_x2 = horner(f3,x2)
    if n ==1 & f1_x1 == f2_x1 & f2_x2 == f3_x2 then
        printf('The piecewise polynomials are continuous and f(x) is a linear spline')
    elseif f1_x1 == f2_x1 & f2_x2 == f3_x2
        for i = 1:n-1
            df1 = derivat(f1)
            df2 = derivat(f2)
            df3 = derivat(f3)
            df1_x1 = horner(df1,x1)
            df2_x1 = horner(df2,x1)
            df2_x2 = horner(df2,x2)
            df3_x2 = horner(df3,x2)
            f1 = df1,  f2 = df2,  f3 = df3
            if df1_x1 ~= df2_x1 | df2_x2 ~= df3_x2 then
                printf('The %ith derivative of polynomial is not continuours',i)
                break
            end
        end
        if i == n-1 & df1_x1 == df2_x1 & df2_x2 == df3_x2 then
            printf('The polynomial is continuous and its derivatives from 1 to %i are continuous, f(x) is a %ith degree polynomial',i,i+1)
        end
    else
            printf('The polynomial is not continuous')
    end
    
endfunction
n = 4 , x0 = -1 , x1 = 0, x2 = 1 , x3 = 2
f1 = x+1 ;
f2 = 2*x + 1 ;
f3 = 4 - x ;
disp('case 1')
isitspline(f1,f2,f3,x0,x1,x2,x3)
n = 4, x0 = 0 , x1= 1 , x2 = 2 , x3 = 3
f1 = x^2 + 1 ;
f2 = 2*x^2 ;
f3 = 5*x - 2 ;
disp('case 2')
isitspline(f1,f2,f3,x0,x1,x2,x3)
n = 4, x0 = 0, x1 = 1, x2 = 2, x3 = 3
f1 = x,
f2 = x^2 - x + 1,
f3 = 3*x - 3
disp('case 3')
isitspline(f1,f2,f3,x0,x1,x2,x3)
