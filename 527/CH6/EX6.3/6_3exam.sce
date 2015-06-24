//Engineering and Chemical Thermodynamics
//Example 6.3
//Page no :261

clear ; clc ;
//The problem contains only theory and different substitutions.There is no numerical part involved. Users can go through the book to obtain the     required expression.
 

disp(" Example: 6.3   Page no : 261") ;
function y=f(x) , y = -4222.1 * x + 17.556
endfunction
xdata = linspace(0.0032,0.004,8) ;
ydata = f(xdata) ;
plot(xdata,ydata) ;
xtitle("Figure E6.2","1/T","ln P_sat (kPa)")