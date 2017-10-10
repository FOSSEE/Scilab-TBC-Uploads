// Example 32_10
clc;funcprot(0);
//Given data
ML=30;// Maximum load in MW
ml=10;// Minimum load in MW
L_p=72;// Peak load in MWh/day

// Calculation
// From Fig.Prob.32.10
// Area BGFA=(1/2)*xy-72;
// FED=(1/2)*(20-x)*(24-y);
function[X]=capacity(y)
    X(1)=(y(1)*y(2)-144)-(0.45*(20-y(1))*(24-y(2)));
    X(2)=(y(1)/y(2))-(20/24);
endfunction
y=[1 1];
z=fsolve(y,capacity);
x=z(1);// Hydel capacity in MW
Spc=ML-x;// Steam plant capacity in MW
printf('\nHydel plant capacity=%0.0f MW \nSteam plant capacity=%0.0f MW',x,Spc);
// The answer provided in the textbook is wrong
