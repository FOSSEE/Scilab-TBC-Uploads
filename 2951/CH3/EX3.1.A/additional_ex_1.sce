clc;
clear;
Fc=500;//carrier frequency in kHz
Fm=1;// message signal frequency in kHz
//a)

USB=Fc+Fm;
LSB=Fc-Fm;
disp(USB,"USBI(in kHZ)=");
disp(LSB,"LSB(in kHz)=");

//b)

Bandwidth=USB-LSB;
disp(Bandwidth,"Bandwidth(in kHZ)=")
//c)

Fm=1.5;//message signal frequency in kHz

USB1=Fc+Fm;
LSB1=Fc-Fm;
disp(USB1,"USB(in kHz)=");
disp(LSB1,"LSB(in kHZ)=");


//d)

Amplitude=[0 0 0 0 0 0 0 0 0 5 10 5 0]; //sample values as denoted in textbook
frequency=490:1:502;

 plot2d3(frequency,Amplitude); 
xlabel("Frequency(in kHZ)");
ylabel("Amplitude(in V)");
