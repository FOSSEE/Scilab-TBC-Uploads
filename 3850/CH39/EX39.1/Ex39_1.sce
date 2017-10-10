
//To Calculate the rms value of Current and time required to reach the Peak Value

//Example 39.1

clear;

clc;

i0=5;//Peak Value of Alternating Current in Amperes

Irms=i0/sqrt(2);//RMS Value of Alternating Current in Amperes

f=60;//Frequency of Alternating Current in Hz

T=1/f;//Time period of Alternating Current in seconds

t=T/4;//Time required to reach the Peak Value of Current in seconds

printf("RMS Value of the Alternating Current = %.1f A",Irms);

printf("\n Time required to reach the Peak Value of Current = %f s",t);
