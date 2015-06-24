//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 10
//DIGITAL MULTIPLEXERS
clear all;
clc;
printf("EXAMPLE 10.1(PAGENO 469)");

//given
X_1 = 4*10^3//first analog signal in Hz
X_2 = 4.5*10^3//second analog signal in Hz

//calculation
//the highest frequency cmponent of the composite signal consisting among two signal is X_2
f_sMIN = 2*X_2;

printf("\n\nThe minimum value of permissible sampling rate = %2f Hz",f_sMIN);
