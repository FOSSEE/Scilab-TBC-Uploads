// Example 4.15.6  page 4.39

clc;
clear;

L=5;        //length of optical link
n1=1.5      //refractive index
c=3d8;      //speed of light
delta=1/100;        //relative refractive index

delTS=L*n1*delta/c;     //computing delay difference
delTS=delTS*10^12;
sigmaS=L*n1*delta/(2*sqrt(3)*c);    //computing rms pulse broadning
sigmaS=sigmaS*10^12;
B=1/(2*delTS);        //computing maximum bit rate
B=B*10^3;
B_acc=0.2/(sigmaS);     //computing accurate bit rate
B_acc=B_acc*10^3;
BLP=B_acc*L;      //computing Bandwidth length product

printf("\nDelay difference is %d ns.\nRMS pulse broadning is %.2f ns.\nBit rate is %.1f Mbit/s.\nAccurate bit rate is %.2f Mbits/s.\nBandwidth length product is %.2f MHz.km.",delTS,sigmaS,B,B_acc,BLP);

//answer in the book for RMS pulse broadning is 72.25 ns, deviation of 0.08ns.
//answer in the book for Bandwidth length product is 13.85 MHz.km, deviation of 0.01MHz.km.
