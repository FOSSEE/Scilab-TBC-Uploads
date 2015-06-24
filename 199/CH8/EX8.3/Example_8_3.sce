// Chapter8
// Page.No-320, Figure.No-8.12
// Example_8_3
// Output frequencies
// Given
clear;clc;
Vin=2; // Input voltage
Fo1=2*10^3; // Output freq Fo when Vin=2V
Fo2=1*10^3; // Output freq Fo/2 when Vin=2V
printf("\n Output freq Fo is = %.f Hz \n",Fo1) // Result
printf("\n Output freq Fo/2 is = %.f Hz \n",Fo2) // Result
count=1;
for i=1:50;    //for 5 cycles
if count<4;
    v(i)=5;
  else
    v(i)=0;
end
if count<10
    count=count+1;
else
    count=1;
end
end
subplot(2,1,1);
plot(v);
title('Output Waveform');
xlabel('t(microsec)');
ylabel('Pulse freq output,Fo(V)');
for i=1:50;    //for 5 cycles
if count<10;
    v(i)=5;
  else
    v(i)=0;
end
if count<20
    count=count+1;
else
    count=1;
end
end
subplot(2,1,2);
plot(v);
title('Output Waveform');
xlabel('t(microsec)');
ylabel('Pulse freq output,Fo/2(V)');