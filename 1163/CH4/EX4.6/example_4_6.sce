clear;
clc;
disp("--------------Example 4.6---------------")
// example explanation
printf("A simple sine wave is sampled at three sampling rates:\nfs = 4f (2 times the Nyquist rate )\nfs = 2f (Nyquist rate\nfs = f (one-half the Nyquist rate)\n\n");
printf("It can be seen that sampling at the Nyquist rate can create a good approximation of the original sine wave (part a).\nOversampling in part b can also create the same approximation, but it is redundant and unnecessary.\nSampling below the Nyquist rate (part c) does not produce a signal that looks like the original sine wave.")
// display the figure
clf();
xname("--------------Example 4.6----------------");
subplot(325)
a1=gca();
a1.x_label.text="c. Undersampling fs=f";
a1.x_location="middle";
x=[0:.1:5*%pi]; // x-range
plot(x,sin(x),nax=[0,0,0,0]);
xfarc(1.5,1,.1,.1,0,360*64);
xfarc(6.2,.1,.1,.1,0,360*64);
xfarc(11,-.9,.1,.1,0,360*64);
xfarc(15.7,0,.1,.1,0,360*64);
subplot(321)
a1=gca();
a1.x_label.text="a.Nyquist rate sampling fs=2f";
a1.x_location="middle";
x=[0:.1:5*%pi]; // x-range
plot(x,sin(x),nax=[0,0,0,0]);
xfarc(1.5,1,.1,.1,0,360*64);
xfarc(4.7,-.9,.1,.1,0,360*64);
xfarc(7.9,1,.1,.1,0,360*64);
xfarc(11,-.9,.1,.1,0,360*64);
xfarc(14,1,.1,.1,0,360*64);
subplot(323)
a1=gca();
a1.x_label.text="b.Oversampling fs=4f";
a1.x_location="middle";
x=[0:.1:5*%pi]; // x-range
plot(x,sin(x),nax=[0,0,0,0]);
xfarc(1.5,1,.1,.1,0,360*64);
xfarc(4.7,-.9,.1,.1,0,360*64);
xfarc(7.9,1,.1,.1,0,360*64);
xfarc(11,-.9,.1,.1,0,360*64);
xfarc(14,1,.1,.1,0,360*64);
xfarc(0,0.1,.1,.1,0,360*64);
xfarc(3.1,.1,.1,.1,0,360*64);
xfarc(6.2,.1,.1,.1,0,360*64);
xfarc(9.4,.1,.1,.1,0,360*64);
xfarc(12.5,.1,.1,.1,0,360*64);
xfarc(15.7,0,.1,.1,0,360*64);
subplot(322)
a1=gca();
xarrows([0 1],[.5 .5],.7);
xarrows([0 0],[0 1],.7);
xset("line style",2);
for i=0:2
    xpoly([0+(i/2.5) .1+(i/2.5)],[.5 1]);
    xpoly([.1+(i/2.5) .2+(i/2.5)],[1 .5]);
end
for i=0:1
    xpoly([.2+(i/2.5) .3+(i/2.5)],[.5 0]);
    xpoly([.3+(i/2.5) .4+(i/2.5)],[0 .5]);
end
xfarc(.09,1,.02,.02,0,360*64);
xfarc(.29,0,.02,.02,0,360*64);
xfarc(.49,1,.02,.02,0,360*64);
xfarc(.69,0,.02,.02,0,360*64);
xfarc(.89,1,.02,.02,0,360*64);
subplot(324)
a1=gca();
xarrows([0 1],[.5 .5],.7);
xarrows([0 0],[0 1],.7);
xset("line style",2);
for i=0:2
    xpoly([0+(i/2.5) .1+(i/2.5)],[.5 1]);
    xpoly([.1+(i/2.5) .2+(i/2.5)],[1 .5]);
end
for i=0:1
    xpoly([.2+(i/2.5) .3+(i/2.5)],[.5 0]);
    xpoly([.3+(i/2.5) .4+(i/2.5)],[0 .5]);
end
xfarc(.09,1,.02,.02,0,360*64);
xfarc(.29,0,.02,.02,0,360*64);
xfarc(.49,1,.02,.02,0,360*64);
xfarc(.69,0,.02,.02,0,360*64);
xfarc(.89,1,.02,.02,0,360*64);
xfarc(0,.52,.02,.02,0,64*360);
xfarc(.2,.52,.02,.02,0,64*360);
xfarc(.4,.52,.02,.02,0,64*360);
xfarc(.6,.52,.02,.02,0,64*360);
xfarc(.8,.52,.02,.02,0,64*360);
xfarc(1,.52,.02,.02,0,64*360);
subplot(326)
a1=gca();
//a1.x_location="middle";
//x=[0:.1:3*%pi]; // x-range
//plot(x,cos(.5*x),nax=[0,0,0,0]);
xfarc(.1,.75,.02,.02,0,360*64);
xfarc(.318,.5,.02,.02,0,360*64);
xfarc(.67,0,.02,.02,0,360*64);
xfarc(.97,.5,.02,.02,0,360*64);
xarrows([0 1],[.5 .5],.7);
xarrows([0 0],[0 1],.7);
xset("line style",2);
xpoly([0 .1],[.65 .75]);
xpoly([.1 .318],[.75 .5]);
xpoly([.318 .67],[.5 0]);
xpoly([.67 .97],[0 .5]);

