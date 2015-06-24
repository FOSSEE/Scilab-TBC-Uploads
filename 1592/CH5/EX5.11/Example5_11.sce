//Scilab Code for Example 5.11 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
wc=1;
y=1;
for n=-%pi:%pi/80:%pi
    if n<-wc | n>wc then
        X(1,y)=1;
        y=y+1;
    else X(1,y)=0;
        y=y+1;
    end
end
n=-%pi:%pi/80:%pi;
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot(n,X);
xlabel ( 'Frequency in Radians/Seconds' );
title ('X(e^jw))    at    Wc=1');
A=1/%pi;
for k=-10:10
    x(k+11)=A*integrate('cos(w*k)','w',wc,%pi);
end
figure(1);
k=-10:10;
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(k,x);
xlabel ( 'Time in Seconds' );
title ('x(n)    at    Wc=1');
