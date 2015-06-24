//clear//
//Caption:Waveforms of Different Digital Modulation techniques
//Figure7.1
//Digital Modulation Techniques
//To Plot the ASK, FSK and PSk Waveforms
clear;
clc;
close;
f = input('Enter the Analog Carrier Frequency in Hz');
t = 0:1/512:1;
x = sin(2*%pi*f*t);
I = input('Enter the digital binary data');
//Generation of ASK Waveform
Xask = [];
for n = 1:length(I)
  if((I(n)==1)&(n==1))
    Xask = [x,Xask];
  elseif((I(n)==0)&(n==1))
    Xask = [zeros(1,length(x)),Xask];
  elseif((I(n)==1)&(n~=1))
    Xask = [Xask,x]; 
  elseif((I(n)==0)&(n~=1))  
    Xask = [Xask,zeros(1,length(x))];
  end
end
//Generation of FSK Waveform
Xfsk = [];
x1 = sin(2*%pi*f*t);
x2 = sin(2*%pi*(2*f)*t);
for n = 1:length(I)
  if (I(n)==1)
      Xfsk = [Xfsk,x2];
  elseif (I(n)~=1)
    Xfsk = [Xfsk,x1];
  end
end
//Generation of PSK Waveform
Xpsk = [];
x1 = sin(2*%pi*f*t);
x2 = -sin(2*%pi*f*t);
for n = 1:length(I)
  if (I(n)==1)
      Xpsk = [Xpsk,x1];
  elseif (I(n)~=1)
    Xpsk = [Xpsk,x2];
  end
end
figure
plot(t,x)
xtitle('Analog Carrier Signal for Digital Modulation')
xgrid
figure
plot(Xask)
xtitle('Amplitude Shift Keying')
xgrid
figure
plot(Xfsk)
xtitle('Frequency Shift Keying')
xgrid
figure
plot(Xpsk)
xtitle('Phase Shift Keying')
xgrid
//Example
//Enter the Analog Carrier Frequency 2
//Enter the digital binary data[0,1,1,0,1,0,0,1]
