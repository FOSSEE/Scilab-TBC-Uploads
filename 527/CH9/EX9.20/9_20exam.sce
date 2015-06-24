//Engineering and Chemical Thermodynamics
//Example 9.20
//Page no :476

clear ; clc
//Given
del_g_0_f_CH4 = -2.057 ; //[J/mol]
del_g_0_f_H2O = -192.713 ; //[J/mol]
del_g_0_f_CO = -182.494 ; //[J/mol]
del_g_0_f_CO2 = -203.595 ; //[J/mol]
del_g_0_f_H2 = 0 ; //[J/mol]
R = 8.314 ;
T = 800 ; //[K]
w = 1 / (R * T) ;
function Z920 = F920(R) 
    m = R(1) ,
    n = R(2) ,
    o = R(3) ,
    a = R(4), // n_CH4
    b = R(5), // n_H2O
    c = R(6), // n_H2
    d =  R(7), // n_CO
    e = R(8), // n_CO2

Z920(1) = a + d + e - 1 ;
Z920(2) = 4 * a + 2 * b + 2 * c - 12 ;
Z920(3) = b + d + 2 * e - 4 ;
Z920(4) = del_g_0_f_CH4 * w + log(a) - log(a + b + c  + d + e) + m  + 4 * o ;
Z920(5) = del_g_0_f_H2O * w + log(b) - log(a + b + c  + d + e) + 2 * o + n ;
Z920(6) = del_g_0_f_H2 * w + log(c)- log(a + b + c  + d + e) + 2 * o ;
Z920(7) = del_g_0_f_CO * w + log(d) - log(a + b + c  + d + e) + m  + n ;
Z920(8) = del_g_0_f_CO2 * w + log(e) - log(a + b + c  + d + e) + m  + 2 * n ;

endfunction ;

 
function [J] = jacob(X) 
    
    m = X(1) ,
    n = X(2) ,
    o = X(3) ,
    a = X(4), // n_CH4
    b = X(5), // n_H2O
    c = X(6), // n_H2
    d = X(7), // n_CO
    e = X(8), // n_CO

    J(1,1) = 0 ;  J(1,2) = 0 ; J(1,3) = 0 ; J(1,4) = 1 ; J(1,5) = 0 ;
    J(1,6) = 0 ; J(1,7) = 1 ; J(1,8) = 1 ; 
    J(2,1) = 0 ;  J(2,2) = 0 ; J(2,3) = 0 ; J(2,4) = 4 ; J(2,5) = 2 ;
    J(2,6) = 2 ; J(2,7) = 0 ; J(2,8) = 0 ;
    J(3,1) = 0 ;  J(3,2) = 0 ; J(3,3) = 0 ; J(3,4) = 0 ; J(3,5) = 1 ;
    J(3,6) = 0 ; J(3,7) = 1 ; J(3,8) = 2 ; 
    J(4,1) = 1 ;  J(4,2) = 0 ; J(4,3) = 4 ; J(4,4) = (b+c+d+e)/(a*(a+b+c+d+e)) ; J(4,5) = -1/(a+b+c+d+e) ; J(4,6) = -1/(a+b+c+d+e) ; J(4,7) = -1/(a+b+c+d+e); J(4,8) = -1/(a+b+c+d+e); 
    J(5,1) = 0 ; J(5,2) = 1 ; J(5,3) = 2 ; J(5,4) = -1/(a+b+c+d+e) ;
    J(5,5) = (a+c+d+e)/(b*(a+b+c+d+e)) ; J(5,6) = -1/(a+b+c+d+e) ;
    J(5,7) = -1/(a+b+c+d+e) ; J(5,8) = -1/(a+b+c+d+e) ;
    J(6,1) = 0 ; J(6,2) = 0 ; J(6,3) = 2 ; J(6,4) = -1/(a+b+c+d+e) ;
    J(6,5) = -1/(a+b+c+d+e) ; J(6,6) = (a+b+d+e)/(c*(a+b+c+d+e)) ;
    J(6,7) = -1/(a+b+c+d+e) ; J(6,8) = -1/(a+b+c+d+e) ;
    J(7,1) = 1 ; J(7,2) = 1 ; J(7,3) = 0 ; J(7,4) = -1/(a+b+c+d+e) ;
    J(7,5) = -1/(a+b+c+d+e) ; J(7,6) = -1/(a+b+c+d+e) ;
    J(7,7) = (a+b+c+e)/(d*(a+b+c+d+e)) ; J(7,8) = -1/(a+b+c+d+e) ;
    J(8,1) = 1 ; J(8,2) = 2 ; J(8,3) = 0 ; J(8,4) = -1/(a+b+c+d+e) ;
    J(8,5) = -1/(a+b+c+d+e) ; J(8,6) = -1/(a+b+c+d+e) ;
    J(8,7) = -1/(a+b+c+d+e) ; J(8,8) = (a+b+c+d)/(e*(a+b+c+d+e)) ;
endfunction

// We will use newton Raphson Method to solve the set of equations.
// Reference : www.infoclearinghouse.com/files/scilab/scilab6a.pdf

function [x] = newtonm(x0,f,J)
    N = 1000 ;
    epsilon = 1*10^-10 ;
    maxval = 1000 ;
    xx = x0 ;

    while(N>0)
        JJ = J(xx)
       // disp(abs(det(JJ)))
        if abs(det(JJ))<epsilon then
            error('newtonm-Jacobian is singular- try new x0')
            abort ;
        end ;
        xn = xx -inv(JJ) * f(xx) ;
     //   disp(abs(f(xn)))
        if abs(f(xn))<epsilon then
            x = xn ;
          //  disp(100-N) ;
          //  disp((x))
            return(x) ;
        end ;

        if abs(f(xn))>maxval then 
           disp(1000-N) ;
           error('Solution diverges') ;
           abrot ;
        end ;
        N = N -1 ;
        xx = xn ;
 end ;
endfunction ;

x1 = [1 ; 1 ; 1 ; 1 ; 1 ; 1 ; 1 ; 1 ] ; // Initial guess .
    
[z] = newtonm(x1,F920,jacob) ;

disp("Example 9.20    Page no:476") ;
printf("\n\n   L_c/RT = %f ,\n   L_o/RT = %f ,\n   L_h/RT = %f ,\n   n_CH4 = %f ,\n   n_H2O = %f ,\n    n_H2  = %f ,\n    n_CO = %f ,\n   n_CO2 = %f",z(1),z(2),z(3),z(4),z(5),z(6),z(7),z(8)) ;
//The solutions given in the text book does not satisfy E9.20D, E9.20E,
// E9.20F and so on .