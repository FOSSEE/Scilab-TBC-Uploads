//Problem 36.04: A complex voltage is represented by
// v = 10sinwt + 3sin(3wt) + 2sin(5wt) Volts
//Determine for the voltage, (a) the rms value, (b) the mean value and (c) the form factor.

//initializing the variables:
A1 = 10; // in volts
A3 = 3; // in volts
A5 = 2; // in volts

//calculation:
//the rms value of voltage is given by
Vrms = ((A1^2 + A3^2 + A5^2)/2)^0.5
//the mean value of voltage is given by
//x = wt
function [Y]=f(x)
    Y = (10*sin(x) + 3*sin(3*x) + 2*sin(5*x));
endfunction
Vav = (1/%pi)*(integrate('f', 'x', 0, %pi))
//form factor is given by
ff = Vrms/Vav

printf("\n\n Result \n\n")
printf("\n (a)the rms value of voltage is %.2f V",Vrms)
printf("\n (b)the mean value of voltage is %.2f V",Vav)
printf("\n (c)form factor is %.3f ",ff)