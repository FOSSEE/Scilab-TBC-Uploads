// Chapter8
// Page.No-320, Figure.No-8.4(a)
// Example_8_1
// Threshold voltage
// Given
clear;clc;
R1=100;R2=56*10^3;
vin=1; // Input voltage in volt
pos_Vsat=14; // Positive saturation voltage in volt
neg_Vsat=-14; // Negative saturation voltage in volt
Vut=(R1/(R1+R2))*(pos_Vsat); // Upper threshold voltage
printf("\n Upper threshold voltage is = %.4f V \n",Vut) // Result
Vlt=(R1/(R1+R2))*(neg_Vsat); // Lower threshold voltage
printf("\n Lower threshold voltage is = %.4f V \n",Vlt) // Result
t=0:0.1:2*%pi;
vut=0.5*sin(t);
subplot(2,1,1);
plot(t,vut);
title('Input Voltage');
xlabel('t');
ylabel('Vin');
c=0;
for i=0:0.1:2*%pi
   c=c+1;
end
for i=1:c;
if vut(i)>0.025
  v(i)=-14;
else if vut(i)<-0.025
  v(i)=14;
end
end
end
subplot(2,1,2);
plot(t,v);
title('Output Waveform');
xlabel('t');
ylabel('Vo');