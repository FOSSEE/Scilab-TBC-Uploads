//Find the covolution Of the following signals.
//Example 4.7<i>
clc;
clear;
close;
t=-4:.01:4;
//Define signal h(t)=u(t+2)
for i=1:length(t)
    if t(i)<-2 then
        h(i)=0;
    else
        h(i)=1;
    end
    //Define signal x(t)=exp^(-2*t)*u(t)
    if t(i)<0 then
    x(i)=0;
else
    x(i)=exp(-2.*t(i));
end
end
y=convol(h,x);//convolution is done
f=scf(0);
subplot(3,1,1);
plot(h,t,'red');
xtitle('h[t]');
subplot(3,1,2);
plot(x,t,'blue');
xtitle('x[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('y[n]');
xs2jpg(0, 'problem52-plot.jpg');
//Find the covolution Of the following signals.
//Example 4.7<iii>
clc;
clear;
close;
t=-4:.01:4;
//Define signal h(t)=u(t-2)
for i=1:length(t)
    if t(i)<-1 then
        h(i)=0;
    else
        h(i)=1;
    end
    //Define signal x(t)=u(t+1)
    if t(i)<2 then
    x(i)=0;
else
    x(i)=1;
end
end
y=convol(h,x);//The convolution is done here.
subplot(3,1,1);
plot(h,t,'red');
xtitle('input response 2','t','h[t]');
subplot(3,1,2);
plot(x,t,'blue');
xtitle('input response 2','t','x[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('output response','t','y[t1]');
//Find the covolution Of the following signals.
//Example 4.7<ii>
clc;
clear;
close;
t=-4:.01:4;
for i=1:length(t)
        x(i)=exp(-abs(t(i)));
        if t(i)<-1  then
       h(i)=0; 
        else
         h(i)=exp(-2.*(t(i)+1)) ;  
        end
    end
y=convol(h,x);//Here convolution of the above two signals is done
subplot(3,1,1);
plot(h,t,'red');
xtitle('input response 2','t','h[t]');
subplot(3,1,2);
plot(x,t,'blue');
xtitle('input response 2','t','x[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('output response','t','y[t1]');


