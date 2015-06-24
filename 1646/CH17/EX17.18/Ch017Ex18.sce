// Scilab code Ex17.18 : Pg:898 (2011)
clc;clear;
count_err = 1e-03;    // Fractional error in counting
m = 3;    // Plateau slope
delta_V = count_err*100/m*100;    // Maximum permissible voltage fluctuation in a GM counter, volt
printf("\nThe maximum permissible voltage fluctuation in a GM counter = %3.1f volts", delta_V);

// Result
// The maximum permissible voltage fluctuation in a GM counter = 3.3 volts 
