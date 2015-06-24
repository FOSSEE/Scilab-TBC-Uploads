clc
//Example 10.4
//Determine phasor current and time-domain current
printf("Given")
disp('Voltage is 8(-50 deg),Frequency is 100rad/s,Inductance is 4H')
L=4;
w=100;
Vamp=8;Vang=-50;
//Let current be I
Iamp=Vamp/(w*L)
Iang=-90+Vang
printf("I=%3.2f(%d deg) A \n",Iamp,Iang)
//In time domain
printf("i(t)=%3.2f *cos(%d*t%d) A",Iamp,w,Iang);