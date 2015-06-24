//Example 13.3
//Program to calculate the number of received photons per bit for:
//(a)ASK heterodyne synchronous detection
//(b)ASK heterodyne asynchronous detection
//(c)PSK homodyne detection

clear;
clc ;
close ;

//Given data
eeta=1;              //*100 percent - EFFICIENCY FOR IDEAL RECEIVER
BER=10^(-9);         //BIT ERROR RATE

//Number of received photons per bit for:
printf("\n\n\t Number of received photons per bit for:");
//(a)ASK heterodyne synchronous detection
Np=(erfinv(1-2*BER))^2*4/eeta; //erfc(x)=1-erf(x)

//Displaying the Result in Command Window
printf("\n\n\t (a)ASK heterodyne synchronous detection = %1.0f.",Np/2);

//(b)ASK heterodyne asynchronous detection
Np=-log(2*BER)*4/eeta;

//Displaying the Result in Command Window
printf("\n\n\t (b)ASK heterodyne asynchronous detection = %1.0f.",Np/2);

//(c)PSK homodyne detection
Np=(erfinv(1-2*BER))^2/2; //erfc(x)=1-erf(x)

//Displaying the Result in Command Window
printf("\n\n\t (c)PSK homodyne detection = %1.0f.",Np);