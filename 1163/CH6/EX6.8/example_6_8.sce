clear;
clc;
disp("--------------Example 6.8---------------")
n=4; // number of channels
channel_byte=1; // each frame carries 1 byte from each channel
frame_size=n*channel_byte; //bytes
frame_size_bits=frame_size*8; // 1 byte = 8 bits
byte_rate=100; // each channel sends 100 bytes/s
frame_rate=channel_byte*byte_rate; // frames per second
frame_duration=1/frame_rate; // seconds
bit_rate=frame_rate*frame_size_bits; // bps
// display the result
printf("Each frame carries %d byte from each channel; the size of each frame, therefore, is %d bytes, or %d bits.\nThe frame rate is %d frames per second. The duration of a frame is %3.2f s.\nThe bit rate is %d bps.",channel_byte,frame_size,frame_size_bits,frame_rate,frame_duration,bit_rate);
// display the figure
clf();
xname("--------------Example 6.8----------------");
xpoly([.3 .3],[.3 .7]);
xset("color",4.2);
xfrect(0,.7,.28,.05);
xfrect(.58,.58,.035,.045);
xfrect(.88,.58,.035,.045);
xset("color",2.9);
xfrect(0,.6,.28,.05);
xfrect(.545,.58,.035,.045);
xfrect(.845,.58,.035,.045);
xset("color",3.8);
xfrect(0,.5,.28,.05);
xfrect(.51,.58,.035,.045);
xfrect(.81,.58,.035,.045);
xset("color",0);
xfrect(0,.4,.28,.05);
xfrect(.475,.58,.035,.045);
xfrect(.775,.58,.035,.045);
xpoly([-.05 .3],[.625 .625]);
xpoly([-.05 .3],[.525 .525]);
xpoly([-.05 .3],[.425 .425]);
xpoly([-.05 .3],[.325 .325]);
xset("font size",4)
xstring(.33,.5,"MUX");
xpoly([.3 .45],[.7 .5]);
xpoly([.3 .45],[.3 .5]);
xstring(.1,.27,"100 bytes/s");
xset("font size",3)
xstring(.65,.45,"100 frames/s");
xstring(.67,.41,"3200 bps");
xstring(.6,.33,"Frame duration = 1/100 s");
xstring(.5,.7,"Frame 4 bytes");
xstring(.8,.7,"Frame 4 bytes");
xstring(.54,.65,"32 bits");
xstring(.84,.65,"32 bits");
xrect(.47,.59,.15,.07);
xrect(.77,.59,.15,.07);
xset("thickness",2);
xarrows([.45 1],[.5 .5],.2);
xset("font size",7);
xstring(.66,.53,". . .");