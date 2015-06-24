//example 7.9
clear
clc
close
//R = input('Enter the value of the resistance R in Kohms :');
//C =input('Enter the value of the Capacitance C in micro farads :');
sp = input('Enter the spacing between two input pulses in micro seconds :');
R=1; //taking give values 
C=0.01;
t= 693*R*C;  // calculting time constant
tt=t*10;
p=1;
len=sp*60-1;
q=1;
for j=1:len    //plotin the graphs 
    lo = sp*10;
    f=modulo(j,lo);
    if f==0 then
        inpu(j)=1;
    else 
        inpu(j)=0;
    end
    inpu(1)=1;
o(j)=2;
end
while q<len
    result(q)=0;
    q=q+1;
end
while p<len
    if inpu(p)==1 then
        for k=1:tt
            result(p+k)=1;
        end
        p=p+tt;
        else 
            result(p)=0;
            p=p+1;
        end     
    end
subplot(2,1,1); // ploting bothe graphs in same window 
plot(o);
plot(inpu);
xlabel('time X10^-7 seconds');
ylabel('Manitude') ;
title('input pulses');
    subplot(2,1,2);
    plot(o);
plot(result);
xlabel('time X10^-7 seconds');
ylabel('Manitude') ;
title('Output');

