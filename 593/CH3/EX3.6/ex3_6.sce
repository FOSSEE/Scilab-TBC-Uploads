clear;
//clc();

// Example 3.6
// Page: 58
printf("Example-3.6  Page no.-58\n\n");


//***Data***//

P = 760;//[mm Hg]
x_b = 0.8;// Mole fraction of benzene in liquid phase
x_t = 0.2;// Mole fraction of toluene in liquid phase

// We will take the help of trial and error method to solve this problem
// From the table A.2 ( page 418 ), Antoine equation constants for benzene are
A_b = 6.90565;
B_b = 1211.003;
C_b = 220.79;

// and that for the toluene are
A_t = 6.95334;
B_t = 1343.943;
C_t = 219.337;

T = 82;//[C]
err = 1

while err > 10^(-3)
    p_b = 10^(6.90565 - 1211.003/(T + 220.79));
    p_t = 10^(6.95334 - 1343.943/(T + 219.337));
    y_b = x_b*p_b/P;
    y_t = x_t*p_t/P;
    err = abs((y_b + y_t) - 1);
    T = T + 0.01;
end

printf(" The temperature at which the given benzene-toluene mixture will have vapor pressure of 1 atm is %0.3f deg C",T);


