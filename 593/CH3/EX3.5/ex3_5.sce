clear;
//clc();

// Example 3.5
// Page: 57
printf("Example-3.5  Page no.-57\n\n");


//***Data***//
T = 20;//[C]
x_benzene = 1.00;
p_i = 75.2;//[torr] vapour pressure of the benzene
P = 760;//[torr] Pressure of the atmosphere

// So
y_benzene = (x_benzene*p_i)/P;

printf(" Mole fraction of the benzene in air that is saturated with benzene is %0.1f",y_benzene);