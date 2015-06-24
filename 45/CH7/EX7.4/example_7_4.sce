//example 7.4
//schmitt trigger inverter
clear;
clc;
close;
//peak= input('Enter the peak voltage of sine wave in volts :');
//utp = input('Enter the upper trigger point in volts :');
//ltp = input('Enter the lower trigger point in volts :');
peak =2; // taking given values for inputs  
utp=1.7;
ltp=0.9;
for i=1:4000
    sinn(i) = peak * sin(i*2*3.1416/1000); //drawing a sin wave with given amplitude   
end
for j=1:4000    // making calculations to plot output
    if modulo(j,1000)< 250 then
    if sinn(j)<utp  then
        result(j)=3.4;
      else 
          result(j)=0.2;          
         end           
        elseif sinn(j)>ltp  then
             result(j)=0.2
        else 
            result(j)=3.4;
    end
end
subplot(2,1,1)
plot(sinn); //ploting the input and output curves 
xlabel('n');
title('input')
ylabel('volts');

subplot(2,1,2);
plot(result,'r');
xlabel('n');
title('output')
ylabel('volts');
