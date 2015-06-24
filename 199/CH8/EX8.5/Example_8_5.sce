// Chapter8
// Page.No-335, Figure.No-8.25(a)
// Example_8_5
// Output voltage
// Given
clear;clc;
vin=100*10^-3;
t=0:0.1:2*%pi;
i=1;
for t=0:0.1:2*%pi;
  if t<=%pi
    v(i)=vin*sin(t);
    else
      v(i)=0;
    end
    i=i+1;
end
t=0:0.1:2*%pi;
plot(t,v)
