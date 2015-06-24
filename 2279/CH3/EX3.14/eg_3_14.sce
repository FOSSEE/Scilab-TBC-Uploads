//Example 3.14
clear;
clc;
to = 2; //Assume the amount of time shift  =2
T=10;
t=0:0.1:T;
for i=1:length(t)
    if (t(i)>=0 & t(i)<1) 
       x1(i) = t(i);
       x2(i)=0;
    elseif (t(i)>=1 & t(i)<2) then
        x1(i)=1;
        x2(i)=t(i)-1;
    elseif (t(i)>=2 & t(i)<3) then
        x1(i)=2;
        x2(i)=1;
    elseif (t(i)>=3 & t(i)<4)
        x1(i)=0;
        x2(i)=2;
    else
        x1(i)=0;
        x2(i)=0;
    end
y1(i) = 2*(x1(i));
y2(i)=2*x2(i);
end
figure(0);
subplot(2,1,1);
plot(t,x1);
xtitle("x1(t)","t","x1(t)");
subplot(2,1,2);
plot(t,y1);
xtitle("y1(t)=2*x1(t)","t","y1(t)");
figure(1);
subplot(2,1,1);
plot(t,x2);
xtitle("x2(t)","t","x2(t)");
subplot(2,1,2);
plot(t,y2);
xtitle("y2(t)=2*x2(t)=2*x1(t-1)=y1(t-1)","t","y2(t)");
//First shift the input signal only
Input_shift = 2*(x1(T-to));
Output_shift = y1(T-to);
if(Input_shift == Output_shift)
  disp('The given system is a Time In-variant system');
else
  disp('The given system is a Time Variant system');
end
