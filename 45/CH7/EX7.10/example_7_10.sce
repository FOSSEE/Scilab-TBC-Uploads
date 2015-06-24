//example 7.10
clear
clc
close
//R = input('Enter the value of the resistance R in Kohms :');
//C =input('Enter the value of the Capacitance C in micro farads :');
sp = input('Enter the spacing between two input pulses in micro seconds :');
R=10;
C=0.01;
//sp=50;
//sp=10;
t= 330*R*C; // calculating time constant 
printf('The output pulse width will be about %f micro seconds ',t); 
tt=t*10;
p=1;
len=sp*60+1;
q=1; 
for j=1:len     // making arrays to plot the graphs 
    lo = sp*10;
    f=modulo(j,lo);
    if f==0 then
        inpu(j)=1;
    else 
        inpu(j)=0;
    end
    inpu(1)=1;
o(j)=5;
end
if sp<40 then
while q<2*len
    result(q)=0;
    q=q+1;
end
else 
while q<1.2*len
    result(q)=0;
    q=q+1;
end 
end
while p<len
    if inpu(p)==1 then
        for k=1:tt
            result(p+k)=3;
        end
        p=p+1;
        else 
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
