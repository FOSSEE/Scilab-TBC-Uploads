//Ex 5.2b
clc;
disp('x(t)=(1/2%pi*t)[sin(31%pi*t)-sin(29%pi*t)]');
w1=31*%pi;
f1=w1/(2*%pi);
w2=29*%pi;
f2=w2/(2*%pi);
if f1<f2 then
    T=1/(2*f2);
else
    T=1/(2*f1);
end
disp(T,'minimun sampling interval');