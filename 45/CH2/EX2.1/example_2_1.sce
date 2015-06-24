//exmaple 2.1 
//7404
clc
close
clear
//frq= input('Enter the square wave frequency in KHz :');
frq=1 ;// frequency in KHz
t=(1/frq)*100;
t=round(t)
for r=1:t*10
    inputc(r)=0;
    outputc(r)=0;
end
p=1;
while p<t*10                        // making arrays to plot the curve 
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            inputc(p+k)=0;
            outputc(p+k)=1;
        end
        p=p+t/2;
        else 
            inputc(p)=1;
            outputc(p)=0;
            p=p+1;
        end
end
y=[3 3];
subplot(2,1,1)      //ploting the curves 
title('input at pin 1')
xlabel('Time X 10^-5 seconds');
ylabel('Magnitude')
plot(inputc)
plot(y)
subplot(2,1,2)
title('output at pin 2')
xlabel('Time X 10^-5 seconds');
ylabel('Magnitude')
plot(outputc)
plot(y)