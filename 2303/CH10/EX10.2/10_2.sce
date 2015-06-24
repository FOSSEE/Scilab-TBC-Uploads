//Example 10.2

clc;
close;
clear;
fx=16000;    //sampling frequency of original signal

//Plotting original sequence
for f=1:1024
    original(f)=sin(2*180*f/(fx/2));    
end
subplot(2,1,1);
plot2d3(original);
title('Original sequence');
xlabel('Frequency');
ylabel('Amplitude');

intf=2;       //interpolation factor
interpolated=[];

//Interpolation
for i=0:length(original)-1                
    interpolated(intf*i+1,1)=original(i+1);
end

//Plotting interpolated sequence
subplot(2,1,2);
plot2d3(interpolated);
title('Interpolated sequence');
xlabel('Frequency');
ylabel('Amplitude');
