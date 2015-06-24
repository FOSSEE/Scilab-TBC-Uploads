clear;
clc;
disp("--------------Example 3.12----------------");
B=200; // kHz
mf=140; // kHz - middle frequency
fh=(2*mf+B)/2; // formula for higher frequency
fl=fh-B; // formula for lower frequency
printf("The lowest frequency is %d kHz and highest frequency is %d kHz.",fl,fh);// display the result
//display the figure
clf();
xname("--------------Example 3.12----------------");
xarrows([.2 1],[.2 .2],.5);
xarrows([.2 .2],[.2 1],.5);
xpoly([.3 .55],[.2 .6]);
xpoly([.55 .8],[.6 .2]);
xset("line style",2);
xpoly([.55 .2],[.6 .6],"lines");
xset("font size",5);
xstring(.1,1,"Amplitude"); // y axis
xstring(1,.1,"Frequency"); // x axis
xstring(0.14,.6,"20 V");
xset("font size",4);
xstring(.3,.14,"40 kHz");
xstring(.8,.14,"240 kHz");
xstring(.53,.14,"140 kHz");