// to calculate the value of Resistance R
// example 7-4 in page 169
clc;
// data given
P=3.5e+3; Q=7e+3; S=5.51e+3; // resistance values of the wheatstone bridge arms in ohm
//calculation
R=S*P/Q;// equation for balancng condition
printf("R=%f K-ohm\n",R/1000);
S=[1e+3 8e+3];// adjusting s from 1 t0 8 K-ohm
for n=1:2
    R=S(n)*P/Q;
    printf("when S=%d K-ohm,\n",S(n)/1000);
    printf("R=%d ohm\n",R);
end
//result
//Measurement range is from 500 ohm to 4000 ohm