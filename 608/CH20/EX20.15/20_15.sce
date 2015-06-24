//Problem 20.15: The open circuit voltage of a transformer is 240 V. A tap changing device is set to operate when the percentage regulation drops below 2.5%. Determine the load voltage at which the mechanism operates.

//initializing the variables:
VnL = 240; // in Volts
reg = 2.5; // in percent

//calculation:
//regulation =(No-load secondary voltage - terminal voltage on load)*100/no-load secondary voltage  in %
VL = VnL - reg*VnL/100

printf("\n\n Result \n\n")
printf("\n the load voltage at which the mechanism operates is %.0f V ", VL)