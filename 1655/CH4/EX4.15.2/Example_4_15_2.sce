// Example 4.15.2  page 4.36

clc;
clear;

L=10;       //fiber length in km
Pin=100d-6;     //input power
Pout=5d-6;      //output power
len=12;       //length of optical link
interval=1;     //splices after interval of 1 km
l=0.5;      //loss due to 1 splice

attenuation=-10*log10(Pin/Pout);        //computing attenuation
alpha=attenuation/L;
signal_attenuation=-alpha*L;            //computing signal attenuation
splices_loss=(len-interval)*l;          //computing splices loss
attenuation_loss=-len*alpha             //computing attenuation loss
total_attenuation=attenuation_loss+splices_loss;        //computing total attenuation

printf("\nSignal attenuation is %.1f dB/Km.\nOverall attenuation is %d dB for 10 km.\nTotal attenuation is %.1f dBs for 12km.",alpha,signal_attenuation,total_attenuation);
