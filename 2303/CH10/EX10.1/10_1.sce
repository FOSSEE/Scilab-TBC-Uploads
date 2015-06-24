//Example 10.1

clc;
close;
clear;
fx=8000;    //sampling frequency of original signal

//Plotting original sequence
for f=1:1024
    original(f)=sin(2*180*f/(fx/2));    
end
subplot(2,1,1);
plot2d3(original);
title('Original sequence');
xlabel('Frequency');
ylabel('Amplitude');

df=2;       //decimation factor
decimated=[];
n=1;

//Decimation
for i=1:length(original)                
    if modulo(i,df)~=0
        decimated(n)=original(i);
        n=n+1;
    end
end

//Plotting decimated sequence
subplot(2,1,2);
plot2d3(decimated);
title('Decimatated sequence');
xlabel('Frequency');
ylabel('Amplitude');
