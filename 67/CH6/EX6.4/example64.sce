//Example 6.4
clc;
disp('x(t)=6cos(50%pi*t)+20sin(300%pi*t)-10cos(100%pi*t)');
w1=50*%pi;
w2=300*%pi;
w3=100*%pi;
f1=w1/(2*%pi);
f2=w2/(2*%pi);
f3=w3/(2*%pi);
if f1>f2 then
    if f1>f3 then
        disp(2*f1,'Nyquist rate=');
    else 
        disp(2*f3,'Nyquist rate=');
    end
else
    if f2>f3 then
        disp(2*f2,'Nyquist rate=');
    else
        disp(2*f3,'Nyquist rate=');
    end
end