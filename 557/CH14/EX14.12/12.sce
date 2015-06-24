clc; funcprot(0);//Example 14.12 
 
//Initializing the variables
As = 6;
A2 = 4.5;
d = 0.02;
f =0.01;
L = 1.5;
K = 0.9;
g = 9.81;

//Calculations
Ap = %pi*d^2/4;
C = Ap*sqrt(2*g/(4*f*L/d+K+1));

function[y] = Qinv(h)
    y = sqrt(1/h)/(C*(1+As/A2));
endfunction

//By direct integration
t = -As*intg(3.0,2.0,Qinv); // Discharge is 2 m below 
disp(t, "Time of discharge by direct integration (s): ");

//By Numerical Integration 
interval = [0.250 0.125 0.0083 0.0063 0.005 0.0042];
for(i=1:length(interval))
    
    start=3.0;piece=3.5:-interval(i):2.0;
    X=-As*integrate('Qinv(h)','h',start,piece);
    
    disp(X(length(X)),"Value of t (s): ",interval(i),"______For Interval(Dh in m)_____");
end
