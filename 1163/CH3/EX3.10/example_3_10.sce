clear;
clc;
disp("--------------Example 3.10---------------")
fl=100;  //lowest frequency in Hz
fh=900;  //highest frequency in Hz
B=fh-fl; // formula to calculate bandwidth 
n=5; // nymber of sine waves
dif_f=(fh+fl)/n; // difference between each spike
f=[]; // spikes
for i=0:4
    f(i+1)=i*dif_f+fl; // formula
end
printf("The bandawidth = %d Hz\n",B); // display the result
printf("The spectrum has only %d spikes, at %d, %d, %d, %d and %d Hz.",n,f(1),f(2),f(3),f(4),f(5));
clf();
xname("--------------Example 3.10----------------");
// display the figure
xarrows([.1 1.1],[.2 .2],.5);
xarrows([.1 .1],[.2 .9],.5);
xset("font size",5);
xstring(.1,.9,"Amplitude"); // y axis
xstring(1.03,.1,"Frequency"); // x axis
xset("font size",4);
xstring(.2,.14,"100");
xstring(.4,.14,"300");
xstring(.6,.14,"500");
xstring(.8,.14,"700");
xstring(1,.14,"900");
xpoly([.2 .2],[.2 .5]);
xpoly([.4 .4],[.2 .5]);
xpoly([.6 .6],[.2 .5]);
xpoly([.8 .8],[.2 .5]);
xpoly([1 1],[.2 .5]);
xpoly([.2 1],[.1 .1]);
xpoly([.2 .2],[.08 .12]);
xpoly([1 1],[.08 .12]);
xstring(0.05,.5,"10 V");
xset("line style",2);
xpoly([.1 .2],[.5 .5],"lines");
xstring(.5,.05,"Bandwidth = 900-100 = 800 Hz");