clc
clear
x=-3
function a=f(x)
    a=exp(x)+2-cos(x);
endfunction
h=1
  y=f(x)
y1=f(x+h)
while(abs(y-y1)>=0.00001)
    y=f(x)
   y1=f(x+h)
     while(y>y1)
    y=f(x)
    y1=f(x+h)
    T=[x+h, y1]
    disp(T)
     x=x+h
     end 
     h=-h/4
     end