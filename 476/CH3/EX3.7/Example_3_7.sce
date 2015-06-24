//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 7


clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  


//Given:
T = 300; //temperature(K)
P = 100; //pressure(bar)
R = 8.314; //ideal gas constant
a = 0.1378; b = 3.18*10^-5; //Van der waals constant

//To calculate the volume

//(a): Ideal gas equation
V_ideal = approx(((R*T)/(P*10^5)),6);
mprintf('Volume calculated by ideal gas equation is %4.2e cubic m',V_ideal);

//(b): Van der Waals equation
function [y]=f(V);
    y=((P*10^5)+(a/(V^2)))*(V-b)-(R*T); //function to calculate difference between calculated and assumed volume
endfunction

V_real = 0;
for i = 0.20:0.01:0.30 //Van der waals volume should be nearly equal to Ideal gas valoume
    res = approx(f(i*10^-3),0);
    for j = -5:5
        if(j==res) //for very small difference i may be taken as exact volume
            V_real = i*10^-3;
    end
end
end
mprintf('\nVolume calculated by Van der Waals equation is %3.2e cubic m',V_real);

//end