clear;
clc;
disp("--------------Example 3.11---------------")
B=20;  //bandwidth in Hz
fh=60;  //highest frequency in Hz
fl=fh-B; // formula to calculate lowest frequency 
printf("The lowest frequency = %d Hz\nThe spectrum contains all integer frequencies which is shown as a series of spikes in the figure.",fl); // display the result
clf();
xname("--------------Example 3.11----------------");
xarrows([.1 .9],[.2 .2],.5);
xset("font size",5);
xstring(.92,.1,"Frequency(Hz)");
xset("thickness",2);
x=linspace(.2,.8,21);
for i=1:21
    xpoly([x(i) x(i)],[.2 .5]);
end
xset("font size",3);
for i=1:21
    s=40+i-1;
    xstring(x(i),.17,string(s));
end
xpoly([.2 .8],[.1 .1]);
xpoly([.2 .2],[.08 .12]);
xpoly([.8 .8],[.08 .12]);
xstring(.4,.1,"Bandwidth = 60-40 = 20 Hz");