//Example no 5.4
//To compute a)RMS delay spread b)maximum bit rate
//Page no. 201

clc;
clear all;

//Given data
t1=0;                                                         //Excess delay of first signal
a1=0;                                                         //Power level of first signal in dB
t2=1*10^-6;                                                   //Excess delay of second signal
a2=0;                                                         //Power level of second signal in dB
a1=10^(a1);                                                    //Power level of first signal in Watt
a2=10^(a2);                                                    //Power level of second signal in Watt

//a)To compute RMS delay spread
t=((a1*t1+a2*t2)/(a1+a2))*10^6;                              //Mean excess delay
t2=((a1*t1^2+a2*t2^2)/(a1+a2))*10^12;                         //Mean square excess delay
sigmat=sqrt(t2-t^2);                                         //RMS delay spread in microseconds

//Displaying the result in command window
printf('\n The RMS delay spread = %0.1f microseconds',sigmat);

//b)To compute maximum bit rate
Ts=(sigmat*10^-6)/0.1;                                       //Sampling time of BPSK modulated signal
Rs=(1/Ts)*10^-3;                                             //Maximum bit rate in kbps

//Displaying the result in command window
printf('\n The maximum bit rate = %0.0f kbps',Rs);
