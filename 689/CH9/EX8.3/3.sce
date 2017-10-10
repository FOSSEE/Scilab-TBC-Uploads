clc; funcprot(0);
//Example 9.3 Horseshoe Vortex  

// Initialisation of variables
T = 250;

// Calculations
function[y] =Velocity(R, theta1, theta2)
    y = (T/(4*%pi*R))*(cos(theta1)-cos(theta2))
endfunction
//Considering Leg AB
    theta1 = 0;                //From figure
    theta2 = %pi - atan(4/5);  //From figure 
    R = 4;                     //From figure
    Vt1 = Velocity(R, theta1, theta2);
    
//Considering Leg BC
    theta1 = atan(5/4);                //From figure
    theta2 = %pi - atan(5/6);       //From figure 
    R = 5;                     //From figure
    Vt2 = Velocity(R, theta1, theta2);

//Considering Leg CD
    theta1 = atan(5/6);                //From figure
    theta2 = %pi;       //From figure 
    R = 6;                     //From figure
    Vt3 = Velocity(R, theta1, theta2);

Vt = Vt1 + Vt2 + Vt3;
 
//Results 
disp(Vt,"Velocity at point P (ft/sec):",Vt3,"Velocity due to leg CD (ft/sec):",Vt2,"Velocity due to leg BC (ft/sec):",Vt1,"Velocity due to leg AB (ft/sec):");
