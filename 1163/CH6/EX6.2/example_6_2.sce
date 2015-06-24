clear;
clc;
disp("--------------Example 6.2---------------")
n=5; // five channels
b=100; // bandwidth of each channel in kHz
gb=10; // guard band in kHz
n_gb= n-1; // number of guard bands= number of channels - 1
min_B = (n*b)+(n_gb*gb); // formula for total bandwidth or minimum bandwidth
printf("The required bandwidth is atleast %d kHz.",min_B); // display result
// display the figure
clf();
xname("--------------Example 6.2----------------");
xarrows([0 1],[.2 .2],.5);
xset("font size",5);
xstring(1,.1,"Frequency");
xpoly([.1 .8],[.07 .07]);
xpoly([.1 .1],[.09 .05]);
xpoly([.8 .8],[.09 .05]);
xset("font size",4);
xstring(.4,.01,"540 kHz");
x=linspace(.1,.7,5);
y=linspace(.2,.8,5);
for i=1:5
    xpoly([x(i) x(i)],[.2 .3]);
end
for i=1:5
    xpoly([y(i) y(i)],[.2 .3]);
end
for i=0:4
    xarc(.17+(i/6.65),.31,.03,.03,0,90*64);
    xarc(.1+(i/6.65),.31,.03,.03,90*64,91*64);
end

for i=0:4
    xpoly([.11+(i/6.65) .19+(i/6.65)],[.31 .31]);
    xpoly([.1+(i/6.65) .2+(i/6.65)],[.35 .35]);
    xpoly([.1+(i/6.65) .1+(i/6.65)],[.33 .37]);
    xpoly([.2+(i/6.65) .2+(i/6.65)],[.33 .37]);
end

xset("font size",3);
x=linspace(.15,.75,5);
for i=1:5
    xstring(x(i)-.03,.4,"100 kHz");
end
xarrows([.23 .23],[.5 .36],.5);
xstring(.2,.53,"Guard band of 10 kHz");


