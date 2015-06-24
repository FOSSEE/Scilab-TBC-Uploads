clear;
clc;
disp("--------------Example 5.4---------------")
B=100;// total Bandwidth in kHz
B1=B/2; // bandwith for one direction
B2=B/2; // bandwidth for other direction
fl=200; // lower frequency=200 kHz
fh=300; // highest frequency =300 kHz
middle_bandwidth1= (fl+(fl+B1))/2; // kHz
Fc1=middle_bandwidth1; // carrier frequency for one direction
middle_bandwidth2= ((fl+B1)+fh)/2; // kHz
Fc2=middle_bandwidth2; // carrier frequency for other direction
N1=B1/2; // data rate in one direction
N2=B2/2; //data rate in other direction
// display result
printf("\nThe carrier frequency for one direction is %d kHz , bandwidth is %d kHz and data rate is %d kbps.\n",Fc1,B1,N1);
printf("\nThe carrier frequency for other direction is %d kHz , bandwidth is %d kHz and data rate is %d kbps.\n",Fc2,B2,N2);
// display the figure
clf();
xname("--------------Example 5.4----------------");
x=linspace(.45,.55,2);
for i=1:2
    xpoly([x(i) x(i)],[.18 .22]);
end
x=linspace(.5,.6,2);
for i=1:2
    xpoly([x(i) x(i)],[.2 .3]);
end
x=linspace(.4,.5,2);
for i=1:2
    xpoly([x(i) x(i)],[.2 .3]);
end
for i=0:1
    xarc(.47+(i/10),.31,.03,.03,0,90*64);
    xarc(.4+(i/10),.31,.03,.03,90*64,91*64);
end
xpoly([.35 .65],[.2 .2])
for i=0:1
    xpoly([.41+(i/10) .49+(i/10)],[.31 .31]);
    
end
xpoly([.4 .49],[.32 .32]);
xpoly([.5 .6],[.32 .32]);
xpoly([.4 .4],[.31 .33]);
xpoly([.49 .49],[.31 .33]);
xpoly([.5 .5],[.31 .33]);
xpoly([.6 .6],[.31 .33]);
xset("font size",2)
xstring(.38,.17,"200                                                            300");
xstring(.45,.15,"(225)                      (275)");
xstring(.449,.23,"fc1                      fc2");
xstring(.41,.33,"B=50 kHz                      B=50 kHz");