clc;
clear;
function yp=predprey(t,y)
    yp=[1.2*y(1)-0.6*y(1)*y(2);-0.8*y(2)+0.3*y(1)*y(2)];
endfunction
t=0:10;
y0=[2 1];
sol=ode(y0,0,t,predprey);
count=0;
for i=1:2:22
    disp(count,"istep=")
    disp(count,"time=")
    disp(sol(i),"y1=")
    disp(sol(i+1),"y2=")
    disp("---------------------------------------------------")
    count=count+1;
end


