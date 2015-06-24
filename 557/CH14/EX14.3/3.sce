clc; funcprot(0);//Example 14.3

//Initializing the variables
Za_Zb = 10;
f = 0.008;
L = 100;
d1 = 0.05;
g = 9.81;
d2 = 0.1;
//Calculations
function[z] = flowRate(d)
     D = 1.5 + 4*f*L/d ; // Denominator in case of v1^2
     A = %pi*d^2/4;
     v = sqrt(2*g*Za_Zb/D);
     z = A*v;
endfunction
    
Q1 = flowRate(d1);
Q2 = flowRate(d2);

Q = Q1+Q2;
D = poly(0, 'D');
v = 4*Q/(%pi*D^2);
X = 1.5 + 4*f*L/D;
f = 10*2*g/(X*v^2)  - 1;
f = numer(f) ;
diameter = roots(f); // Taking roots of numerator denominator will be multiplied by zero
i = 1;
while (i<=length(diameter))
    x = diameter(i);
    if(imag(x) == 0) then     
        dia = diameter(i);
        i= i+1;
    else
        i = i+1; 
    end
end

disp(dia*1000,"Diameter of single equivalent pipe(mm) :", Q2 ,"Flow throught pipe 2 (m3/s):", Q1 ,"Flow throught pipe 1 (m3/s):");