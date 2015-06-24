//Example 10.4
//Program to determine: 
//(a)The fiber non-linear coefficient
//(b)The parametric gain in dB when it is reduced to quadratic gain

clear;
clc ;
close ;

//Given data
L=500;               //metre - LENGTH 
Lambda=1.55*10^(-6); //metre - OPERATING WAVELENGTH
Pp= 1.4;             //W - SIGNAL POWER   
Gp_dB=62.2;          //dB - PEAK GAIN

//(a)The fiber non-linear coefficient
gaamma=(Gp_dB-10*log10(1/4))/(Pp*L)*1/(10*log10((%e)^2));

//(b)The parametric gain in dB when it is reduced to quadratic gain
Gp_dB1=10*log10((gaamma*Pp*L)^2);

//Displaying the Results in Command Window
printf("\n\n\t (a)The fiber non-linear coefficient is %0.2f X 10^(-3) per W per km.",gaamma/10^(-3));
printf("\n\n\t (b)The parametric gain in dB when it is reduced to quadratic gain is %0.1f dB.",Gp_dB1);