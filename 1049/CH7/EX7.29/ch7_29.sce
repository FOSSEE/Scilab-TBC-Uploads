clear;
clc;
I_mx=425;
I_lt=180;    //lower limit of current pulsation
I_mn=I_mx-I_lt;
T_on=.014;
T_off=.011;
T=T_on+T_off;
T_a=.0635;
a=T_on/T;
V=(I_mx-I_mn*exp(-T_on/T_a))/(1-exp(-T_on/T_a));
a=.5;
I_mn=(I_mx-V*(1-exp(-T_on/T_a)))/(exp(-T_on/T_a));
T=I_mx-I_mn;    printf("higher limit of current pulsation=%.0f A",T);
T=T_on/a;
f=1/T;    printf("\nchopping freq=%.3f Hz",f);
printf("\nduty cycle ratio=%.2f",a);
//Answers have small variations from that in the book due to difference in the rounding off of digits.