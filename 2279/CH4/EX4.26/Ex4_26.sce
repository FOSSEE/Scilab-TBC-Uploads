//Interconnectiuion of LTI systems
n=-10:10;
for i=1:length(n)
    if(n(i)==0)
        h1(i)=2;
    else
        h1(i)=1;
    end
end
for i=1:length(n)
    if(n(i)==2)
        h2(i)=1;
    else
        h2(i)=0;
    end
end
for i=1:length(n)
    if(n(i)>=1)
        h3(i)=1;
    else
        h3(i)=0;
end
end
for i=1:length(n)
    if(n(i)>= -1)
        h4(i)=1;
    else
        h4(i)=0;
    end
end
for i=1:length(n)
    h5(i)=n(i);
    h6(i)=1;
end
h23=h2.*h3;
h234=h4+h23;
h1234=h1.*h234;
h56=h5.*h6;
h=h56+h1234;
x=[1 -0.5];
n1=[0 1];
y=convol(x,h);
n2=-10:11;
subplot(3,1,1)
xtitle("input signal x(n)","....................n","x[n]");
plot(n1,x,'.');
subplot(3,1,2)
xtitle("system response h(n)","....................n","h[n]");
plot(n,h,'.');
subplot(3,1,3)
xtitle("output signal y(n)",".............................n","y[n]");
plot(n2,y,'.');
