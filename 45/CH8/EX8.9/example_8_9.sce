//example 8.9
clc
close
clear
disp("since J=K=1, the flip-flop simply toggles ech time the clock goes low, The waveform at Q has a period twice of that of the  wavefrm. In other words, the frequency of Q id only one-half of that of . This circuit acts as a frequency divider  --the output frequency divide by 2. Note that Q changes state on NTs of the clock. The waveforms are as shown in the figure ");
t=50; // taken time period 
p=1;
while p<t*10  // tking values for ploting the graph 
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            cin(p+k)=0;
        end
         p=p+t/2;
        else 
            cin(p)=1;
            p=p+1;
        end
end
t=100;
p=1;
while p<t*5
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            dout(p+k)=0;
        end
         p=p+t/2;
        else 
          dout(p)=1;
            p=p+1;
        end
end
y=[3 3];
subplot(2,1,1)  //plotin both the plots in a single window
title('input at pin C')
plot(cin)
plot(y)
subplot(2,1,2)
title('out put at pin D')
plot(dout)
plot(y)