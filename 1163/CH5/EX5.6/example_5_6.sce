clear;
clc;
disp("--------------Example 5.6---------------")
n=3; // number of bits per sample
N=3; // bit rate = 3 MHz
Fc=10; // carrier f requency = 10 MHz
L=2^n; // number of levels
S=N/n; // baud rate
two_df=S; // 2df = 1 MHz
B=L*S; // bandwidth
printf("\nThe number of levels is %d , the signal rate is %d Mbaud and the bandwidth is %d MHz.",L,S,B);// display result
// display the figure
clf();
xname("--------------Example 5.6----------------");
xarrows([0 1],[.2 .2],.5);
xset("font size",5);
xstring(1,.1,"Frequency");
xpoly([.1 .9],[.55 .55]);
xpoly([.1 .1],[.57 .53]);
xpoly([.9 .9],[.57 .53]);
xstring(.4,.6,"Bandwidth = 8 MHz");
x=linspace(.15,.85,8);
for i=1:8
    xpoly([x(i) x(i)],[.18 .22]);
end
x=linspace(.1,.9,9);
for i=1:9
    xpoly([x(i) x(i)],[.2 .3]);
end
for i=0:7
    xarc(.17+(i/10),.31,.03,.03,0,90*64);
    xarc(.1+(i/10),.31,.03,.03,90*64,91*64);
end

for i=0:7
    xpoly([.11+(i/10) .19+(i/10)],[.31 .31]);
end
xset("thickness",2);
xpoly([.5 .5],[.2 .35])
xset("font size",3);
x=linspace(.15,.85,8);
for i=1:8
    s=6.5+i-1;
    xstring(x(i),.14,"f"+string(i));
    xstring(x(i),.1,string(s));
    xstring(x(i),.06,"MHz");
end
xstring(.5,.14,"fc");
xstring(.5,.1,"10");
xstring(.5,.06,"MHz");