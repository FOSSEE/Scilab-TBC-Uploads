clear;
clc;
disp("--------------Example 6.1---------------")
channel_bandwidth=4; // a voice channel occupies a bandwidth of 4 kHz.
n=3; // number of channels
link_bandwidth=12; // kHz
fl=20; // link bandwidth 20-32 kHz
fl1=20; // lower frequency of bandwidth for channel 1
fh1=fl1+channel_bandwidth; // higher frequency of bandwidth for channel 1
fl2=fh1; // lower frequency of bandwidth for channel 2
fh2=fl2+channel_bandwidth; // higher frequency of bandwidth for channel 2
fl3=fh2; // lower frequency of bandwidth for channel 3
fh3=fl3+channel_bandwidth; // higher frequency of bandwidth for channel 3
printf("The %d- to %d-kHz bandwidth is used for the first channel, the %d- to %d-kHz bandwidth for the second channel, and the %d- to %d-kHz\nbandwidth for the third one. Then they are combined as shown in the figure.\n\nAt the receiver, each channel receives the entire signal, using a filter to separate out its own signal. The first channel uses a filter that passes\nfrequencies between %d and %d kHz and filters out (discards) any other frequencies. The second channel uses a filter that passes frequencies between\n%d and %d kHz,and the third channel uses a filter that passes frequencies between %d and %d kHz. Each channel then shifts the frequency to start\nfrom zero.",fl1,fh1,fl2,fh2,fl3,fh3,fl1,fh1,fl2,fh2,fl3,fh3); // display result
// display the figure
clf();
xname("--------------Example 6.1----------------");
xset("font size",3)
for i=0:2
    xset("color",i+1);
    xfpoly([-.05 -.05 -.02 .01 .01],[.6-(i/6) .64-(i/6) .68-(i/6) .64-(i/6) .6-(i/6)]);
    xfpoly([1.05 1.05 1.08 1.11 1.11],[.6-(i/6) .64-(i/6) .68-(i/6) .64-(i/6) .6-(i/6)]);
    xfpoly([.13+(i/15) .13+(i/15) .16+(i/15) .19+(i/15) .19+(i/15)],[.6-(i/6) .64-(i/6) .68-(i/6) .64-(i/6) .6-(i/6)]);
    xfpoly([.805+(i/15) .805+(i/15) .835+(i/15) .865+(i/15) .865+(i/15)],[.6-(i/6) .64-(i/6) .68-(i/6) .64-(i/6) .6-(i/6)]);
    xfpoly([.42+(i/16.5) .42+(i/16.5) .45+(i/16.5) .48+(i/16.5) .48+(i/16.5)],[.6-(1/6) .64-(1/6) .68-(1/6) .64-(1/6) .6-(1/6)]);
    xset("color",0);
    xpoly([-.1 .05],[.6-(i/6) .6-(i/6)]);
    xrect(.05,.64-(i/6),.07,.06);
    xstring(.05,.6-(i/6),"Modulator");
    xpoly([.12 .32],[.6-(i/6) .6-(i/6)]);
    xarrows([.33 .36],[.6-(i/6) .435],.5);
    xarrows([.69 .72],[.435 .6-(i/6)],.5);
    xrect(.73,.64-(i/6),.07,.06);
    xstring(.76,.6-(i/6),"Filter");
    xpoly([.8 .995],[.6-(i/6) .6-(i/6)]);
    xpoly([1.01 1.2],[.6-(i/6) .6-(i/6)]);
    xstring(-.05,.56-(i/6),"0");
    xstring(.01,.56-(i/6),"4");
    xstring(1.05,.56-(i/6),"0");
    xstring(1.1,.56-(i/6),"4");
end
xarc(.36,.445,.045,.045,0,64*360);
xarc(.64,.445,.045,.045,0,64*360);
xarrows([.41 .63],[.6-(1/6) .6-(1/6)],.4);
xrect(.04,.69,.37,.46);
xrect(.72,.69,.28,.46);
xset("font size",3)
xstring(.375,.41,"+");
xstring(.04,.7,"Shift and combine");
xstring(.75,.2,"Filter and shift");
xstring(.43,.35,"Higher-bandwidth link");
xstring(.42,.39,"20");
xstring(.59,.39,"32");
xstring(.12,.57,"20");
xstring(.19,.57,"24");
xstring(.8,.57,"20");
xstring(.87,.57,"24");
xstring(.18,.4,"24");
xstring(.25,.4,"28");
xstring(.86,.4,"24");
xstring(.93,.4,"28");
xstring(.25,.23,"28");
xstring(.32,.23,"32");
xstring(.93,.23,"28");
xstring(.99,.23,"32");