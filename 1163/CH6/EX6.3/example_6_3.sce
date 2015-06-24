clear;
clc;
disp("--------------Example 6.3---------------")
n=4; // number of channels
bitrate=1; // 1 Mbps
total_bandwidth=1*10^6; // 1 MHz
channel_bandwidth=total_bandwidth/n;
bits=(bitrate*10^6/total_bandwidth)*n; // number of bits per Hz
printf("The satellite channel is analog. Each channel has a %d kHz bandwidth.\nEach digital channel of %d Mbps is modulated such that each %d bits is modulated to 1 Hz. One solution is 16-QAM modulation.",channel_bandwidth*10^-3,bitrate,bits); // display the result
// display the figure
clf();
xname("--------------Example 6.3----------------");
xpoly([.5 .5],[.3 .8]);
xpoly([.5 .65],[.8 .55]);
xpoly([.5 .65],[.3 .55]);
xset("font size",2.8);
for i=0:3
    xstring(.22,.71-(i/10),"1 Mbps                                                   250 kHz");
    xstring(.22,.665-(i/10),"Digital                                                    Analog");
    xpoly([.2 .3],[.7-(i/10) .7-(i/10)]);
    xpoly([.4 .5],[.7-(i/10) .7-(i/10)]);
    xrect(.3,.72-(i/10),.1,.05);
    xstring(.33,.68-(i/10),"16-QAM");
end
xset("font size",4);
xstring(.53,.53,"FDM");
xstring(.67,.57,"1 MHz");
xpoly([.65 .75],[.55 .55]);