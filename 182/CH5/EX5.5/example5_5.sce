//To find the number of pulses counted
//example5-5 in page 131
clc;
//data given
Vr=1.25;//peak voltage of ramp in volts
tr=125e-3;//time period of the ramp=1.25 ms
T=1/(1e+6);// frequency =1 Mhz and time period of the clock pulses is 1/f
for Vi=0.75:(0.9-0.75):0.9,// analog input voltages for which clock pulses has to b found
    t1=(tr/Vr)*Vi;//time period of the comparator high out put
    N=t1/T;// pulses counted
    printf("number of pulses counted for Vi=%.2f V are %d\n",Vi,N/100);
end
//result
//number of pulses counted for Vi=0.750000 V are 750
//number of pulses counted for Vi=0.900000 V are 900