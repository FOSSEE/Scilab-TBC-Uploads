//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.14(PAGENO 308)");

//given
A = 60//gain of noiseless amplifier
V_n1 = 1*10^-3//output of the amplifier
B = 20*10^3//initial bandwidth
B1 = 5*10^3//change in bandwidth
k = 1.38*10^-23//boltzman's constant
T = 273 + 80//temperature in degree kelvin

//calculaitons
//since the bandwidth is reesuced to 1/4th of its value,therefore the noise voltage 
//will be V_n proportional to sqrt(B)
//Hence, the noise voltage at 5KHz will become half its value at 20KHz bandwidth i.e,
V_n = .5*10^-3//noise voltage in volts
V_no = V_n1/A;//noise ouput voltage 
R = (V_no^2/(4*k * T * B ));//resistance at 80degree celcius

//results
printf("\n\ni.Meter reading in volts = %.10f V",V_n);
printf("\n\nii.Resistance at 80 degree celcius = %.2f ohms",R);
printf("\n\nNote: There is calculation mistake in textbook in the measurement of resistance they took constant in formula as 1 instead of 4");
