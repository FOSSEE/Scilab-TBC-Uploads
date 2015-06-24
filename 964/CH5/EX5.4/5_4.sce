clc;
clear;
m=68.1;//kg
v=40;//m/s
t=10;//s
g=9.8;//m/s^2
function y=f(c)
    y=g*m*(1-exp(-c*t/m))/c - v;
endfunction
x1=12;
x2=16;
xt=14.7802;//true value
e=input("enter the tolerable approximate error=")
xr=(x1+x2)/2;
i=1;
et=abs(xr-xt)/xt*100;//error
disp(i,"Iteration:")
disp(x1,"xl:")
disp(x2,"xu:")
disp(xr,"xr:")
disp(et,"et(%):")
disp("----------------------------------------")
etemp=100;
while etemp>e
    if f(x1)*f(xr)>0 then 
        x1=xr;
        xr=(x1+x2)/2;
        etemp=abs(xr-x1)/xr*100;
        et=abs(xr-xt)/xt*100;
    end
    if f(x1)*f(xr)<0 then
            x2=xr;
            xr=(x1+x2)/2;
            etemp=abs(xr-x2)/xr*100;
            et=abs(xr-xt)/xt*100;
    end
    if f(x1)*f(xr)==0 then break;
    end
i=i+1;
disp(i,"Iteration:")
disp(x1,"xl:")
disp(x2,"xu:")
disp(xr,"xr:")
disp(et,"et(%):")
disp(etemp,"ea(%)")
disp("----------------------------------------")
end

disp(xr,"The result is=")