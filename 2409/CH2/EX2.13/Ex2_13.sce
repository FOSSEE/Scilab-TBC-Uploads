
//Variable Declaration
M=205  //Mean anomaly(degrees)
e=0.0025  //Eccentricity
E=%pi //Initial guess value for eccentric anomaly

//Calculation

function [y] = f(E)
    y=M-E+e*sin(E)
endfunction
E=fsolve(3.142,f)

printf("The Eccentric anomaly is: %.4f degrees",E)
