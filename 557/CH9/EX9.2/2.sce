funcprot(0);clc; //Example 9.2 

//Initializing the variables
Vp = 3;
LpByLm = 30;
rhoPbyRhoM = 1;
muPbymuM = 1;

//Calculations
Vm = Vp*LpByLm*rhoPbyRhoM*muPbymuM;
 
disp(Vm, 'Mean water tunnel flow velocity (m/s):');