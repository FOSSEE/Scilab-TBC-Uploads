clear;
//clc();

// Example 8.8
// Page: 184
printf("Example-8.8  Page no.-184\n\n");

//***Data***//
Temp = 68;//[F]
P = 1;//[atm]
// Changing the temperature in 'K' and pressure in 'bar' we have
Temp = 273.15+(Temp-32)*5/9;//[K]
P = P*1.01325;//[bar]
// For water from the table A.1(page 417)
T_c = 647.1;//[K]
P_c = 220.55;//[bar]
// Now
T_r = Temp/T_c;
P_r = P/P_c;
w = 0.345;
//Now applying the result for the little EOS from the example 7.1(page 135 ), we have
// f/P = exp(P_r/T_r*f(T_r))
// From the chapter 2 of this book, we have 
f_T_r = (0.083-0.422/T_r^(1.6))+w*(0.139-0.172/T_r^(4.2));
// So
f_by_P = exp(P_r/T_r*f_T_r);
printf("The value of the f/P for water vapour in the hypothetical state is %0.2f",f_by_P);