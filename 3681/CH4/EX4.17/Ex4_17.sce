// Calculating the temperature of machine after one hour of its final steady temperature rise
clc;
disp('Example 4.17, Page No. = 4.24')
// Given Data
Ti = 40;// Initial temperature (in degree celsius)
T_ambient = 30;// Ambient temperature (in degree celsius)
Tm = 80;// Final steady temperature rise (in degree celsius)
Th = 2;// Heating time constant (in hours)
t = 1;// Since we have to calculate temperature of machine after one hour of its final steady temperture rise (in hours)
// Calculation of the final steady temperature rise of coil surface and hot spot temperature rise
Ti_rise = Ti-T_ambient;// Initial temperature rise (in degree celsius)
T = Tm*(1-%e^(-t/Th))+(Ti_rise*%e^(-t/Th));// Temperature rise after one hour (in degree celsius)
disp(T+T_ambient,'Temperature of machine after one hour (degree celsius)=');
//in book answer is 67.54 (degree celsius).  The answers vary due to round off error

