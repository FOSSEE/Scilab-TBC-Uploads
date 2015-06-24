//Example 4.27
//Interconnectiuion of LTI systems
n2=0:18;
h1=[1 5 10 11 8 4 1];
h2=[1 1 zeros(1,5)];
h3=[1 1 zeros(1,5)];
a=convol(h1,h2);
h=convol(a,h3);
x=[1 -1];
n1=[0 1];
n3=0:19;
y=convol(x,h);
subplot(3,1,1)
xtitle("input signal x(n)","....................n","x[n]");
plot(n1,x,'.');
subplot(3,1,2)
xtitle("system response h(n)","....................n","h[n]");
plot(n2,h,'.');
subplot(3,1,3)
xtitle("output signal y(n)",".............................n","y[n]");
plot(n3,y,'.');
