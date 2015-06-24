// to find the amplitude,frequency and the phase difference b/w two waveforms in the figure 9-20
// example 9-3 in page 256
clc;
//Data Given
x=['A' 'B'];
V=200D-3;// volatge/division=200mV
T=0.1D-3;//time/division=0.1ms
one_cycle=360;// one cycle=360 degree
Vd=[6 2.4];// vertical divisions of A and B respectively
Hd=[6 7];// horizontal divisions of A and B respectively
//calculation
for n=1:2
    Vp=Vd(n)*V;// V peak-to-peak
    Tp=T*Hd(n);// time period
    f=1/Tp;//frequency
    printf("V peak-peak of wave from %c=%.2f V\n",x(n),Vp);
    printf("frequency of wave form %c=%.0f Hz\n",x(n),f);
end
phase_diff=Hd(2)-Hd(1);
phase_diff=one_cycle*phase_diff/6;// here one cycle makes 6 horizontal divisions
printf("phase difference=%d degree",phase_diff);
//result
//V peak-peak of wave from A=1.20 V
//frequency of wave form A=1667 Hz
//V peak-peak of wave from B=0.48 V
//frequency of wave form B=1429 Hz
//phase difference=60 degree 
