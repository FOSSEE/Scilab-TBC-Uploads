//Example 4.30
//Cascade connection of systems
clc
clear
n=0:10;
h11=[1 -0.5];
for i=1:length(n)
    h2(i)=0.5^n(i);
    if (n(i)==0) then
        h1(i)=1;
    elseif n(i)==1 then
            h1(i)=-0.5
    else
        h1(i)=0;
    end
end
h=convol(h11,h2);
n2=0:11;
//assume x[n]=[1 1 1]
n1=0:2;
x=[1 1 1];
n3=0:13;
y=convol(x,h);
subplot(3,1,1);
plot(n1,x,'.');
xtitle("Input Signal x[n]","n","x[n]")
subplot(3,1,2);
plot(n2,h,'.');
xtitle("Impulse Response h[n]","n","h[n]")
subplot(3,1,3);
plot(n3,y,'.');
xtitle("Output Signal y[n]","n","y[n]")
disp("the given system is an invertible system");
