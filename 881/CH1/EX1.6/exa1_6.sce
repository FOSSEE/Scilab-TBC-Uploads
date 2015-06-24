clc;
//Example 1.6
//Page no 10



//Solution

//(a)

a=100*5

disp(a,"(a)Overall gain of the system is the product of the individual gain, that is ");

ap=10*log10(a);

disp('dB',ap,"Thus, the overall gain in dB is,")

//(b)

b=[100*(10^-6)]*500;

disp('W',b,"(b)Output power  = Input power to the system X Overall power gain, that is ")

bp=10*log10(b/[1*(10^-3)]);

disp('dBm', bp,"Therefore, Output power expressed in dB is, ");
