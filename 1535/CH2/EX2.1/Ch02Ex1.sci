// Scilab Code Ex2.1 :  Page-46 (2010)
function V = f(t)
    V = 0.2*sin(120*%pi*t);
endfunction
t = 0;    // Time when peak value of current occurs
C = 10e-012;    // Capacitance of the capacitor, farad
I = C*derivative(f,t);
printf("\nThe peak value of displacement current = %6.4e A", I);

// Result 
// The peak value of displacement current = 7.5398e-010 A
