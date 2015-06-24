//Engineering and Chemical Thermodynamics
//Example 6.13
//Page no :287

clear ;clc ;
//Given
C1 = 1.596 ;
C2 = 1.591 ;
C3 = -74.40 ;
C4 = -0.561 ;
A = [ 0 ,0.1 ,0.2 ,0.3 ,0.4 ,0.5 ,0.6 ,0.7 ,0.8 ,0.9 ,1] ;
m = (-C1 + C2 + C3 * ( C4 * 0.25)) * 1000 ;

disp(" Example: 6.13   Page no : 287") ;
for i = 1:11 
    x_H2O = A(1,i) ;
    x_H2SO4 = 1- x_H2O ;
    h = C1 * x_H2SO4 + C2 * x_H2O + C3 * x_H2SO4 * x_H2O *(1 + C4 * x_H2SO4) ;
    C(1,i) = h * 10^3;
end
y1 = C(1,6) ;

function y = f613(x) ,
    y = -m * (x - 0.5 ) + y1 ;
endfunction

for i = 1:11
    F(1,i) = f613(A(1,i)) ;
end

plot(A,C);
plot(A,F)
xtitle("Figure E6.13","x_H2O","h (J/mol)");

printf("\n                   H_bar_H2SO4 = %d J/mol      H_bar_H2O = %d J/mol\n ",F(1,1),F(1,11)) ;
disp("      The partial molar property can be obtained by drawing tangent at mole fraction 0.5 .")