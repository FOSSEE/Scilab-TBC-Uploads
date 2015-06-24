clc;funcprot(0);
//Example 5.7

//Initializing the variables 
Vj = 5*10^6;       //Velocity of Jet
Mr = 150000;     // Mass of Rocket
Mf0 = 300000;    // Mass of initial fuel
Vr = 3000;        //Velocity of jet relative to rocket
g = 9.81;         // Acceleration due to gravity

//Calculations
m = Vj/Vr;    //Rate of fuel consumption
T = Mf0/m;    // Burning time
function[DVt]=f(t)
    DVt = m*Vr /(Mr + Mf0 - m*t) - g;
endfunction

function[V]=h(t)
    V = -g*t - Vr*log(1 - t/269.95);
endfunction

Vt = intg(0, 180 ,f);
Z1=intg(0,180,h);

Z2 = Vt^2/(2*g);
disp(T, "(a)Burning time (s): ");
disp(Vt,"(b)Speed of rocket when all fuel is burned (m/s):");
disp((Z2+Z1)/1000,"(c)Maximum height reached (km):");