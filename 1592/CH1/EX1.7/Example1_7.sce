//Scilab Code for Example 1.7 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
n=1;
for t=-10:0.1:10;
    //Function for Even signal
    y1(n)=0.5*(exp(-t)*u(t)+exp(t)*u(-t));
    n=n+1;
end
a=gca();
a.x_location="origin";
a.y_location="origin";
t=-10:0.1:10;
//Plot of Even Signal
plot(t,y1);
title('y1(t)');
xlabel('Time in seconds');
n=1;
for t=-1:0.01:1;
    //Function for Odd signal
    y2(n)=0.5*(exp(-t)*u(t)-exp(t)*u(-t));
    n=n+1;
end
figure(1);
a=gca();
a.x_location="origin";
a.y_location="origin";
t=-1:0.01:1;
//Plot of Odd Signal
plot(t,y2)
disp('plotted the signal both in even and odd forms');
title('y2(t)');
xlabel('Time in seconds');
