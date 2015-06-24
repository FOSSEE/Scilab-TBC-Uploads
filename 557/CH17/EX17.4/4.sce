clc; funcprot(0); //Example 17.4 

//Initializing the variables
gma = 1.4;
f = 0.00375;
d = 0.05;

//Calculations
m = d/4;
function[y] = x(Ma)
    A =(1 -Ma^2 )/(gma*Ma^2);
    B = (gma+1)*Ma^2/(2+(gma-1)*Ma^2); 
    y = m/f*(A+ (gma+1)*log(B)/(2*gma));
endfunction

X1 = x(0.2); // At entrance Ma = 0.2;
X06_X1 =x(0.6); // Section(b) Ma = 0.6;

X06 =  X1-X06_X1;
disp(X06, "Distance from the entrance (m):",X1,"The Distance X1 at which the Mach number is unity (m) :");