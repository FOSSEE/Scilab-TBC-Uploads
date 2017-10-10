// Example 34_11
clc;funcprot(0);
//Given data
L=30;// Total load in MW
L_12=20;//Capacity of two steam turbines in MW
// S_1=2000+10*L_1-0.0001*L_1^2
// S_2=1000+7*L_1-0.00005*L_2^2

//Calculation
//L_1+L_2=L*10^3;
// For the most loading,the required condition is (dS_1/dL_1=dS_2/dL_2)
function[X]=Load(y)
    X(1)=(y(1)+y(2))-(L*10^3);
    X(2)=(10-(0.0002*y(1)))-(7-(0.0001*y(2)));
endfunction
y=[10 10];
z=fsolve(y,Load);
L_1=z(1)/1000;// MW
L_2=z(2)/1000;// MW
printf('\nL_1=%0.0f MW \nL_2=%0.0f MW',L_1,L_2);
