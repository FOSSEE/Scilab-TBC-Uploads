clc;funcprot(0); //Example 9.1

//Initializing the variables
Vp = 10;
LpByLm = 20;
rhoPbyRhoM = 1;
muPbymuM = 1;
//Calculations
Vm = Vp*LpByLm*rhoPbyRhoM*muPbymuM;
 
disp(Vm, 'Mean water tunnel flow velocity (m/s):'); 