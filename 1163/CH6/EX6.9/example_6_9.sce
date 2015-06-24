clear;
clc;
disp("--------------Example 6.9---------------")
n=4; // number of channels
channel_bits=2; // each frame carries 2 bits from each channel
bitrate_channel=100*10^3 // kbps of each channel
frame_rate=bitrate_channel/channel_bits; // frames per second
frame_duration=1/frame_rate; // seconds
frame_bits=n*channel_bits; // bits carried by each frame
bit_rate=frame_rate*frame_bits;// of the link in bps
bit_duration=1/bit_rate; // seconds
// display result with appropriate units
printf("The frame rate is %d frames per second. The frame duration is therefore %d microseconds .\nEach frame carries %d bits; the bit rate is %d kbps.\nThe bit duration is %2.1f microseconds.",frame_rate,frame_duration*10^6,frame_bits,bit_rate*10^-3,bit_duration*10^6);//display result
// display the figure
clf();
xname("--------------Example 6.9----------------");
xpoly([0 .3],[.7 .7]);
xpoly([0 .3],[.6 .6]);
xpoly([0 .3],[.5 .5]);
xpoly([0 .3],[.4 .4]);
xpoly([.3 .3],[.3 .8]);
xset("font size",4)
xstring(.33,.53,"MUX");
xpoly([.3 .45],[.8 .55]);
xpoly([.3 .45],[.3 .55]);
xset("font size",2.5)
xstring(.05,.71,"100 kbps                        ...    110010");
xstring(.05,.61,"100 kbps                        ...    001010");
xstring(.05,.51,"100 kbps                        ...    101101");
xstring(.05,.41,"100 kbps                        ...    000111");
xset("font size",3)
xstring(.65,.5,"50,000 frames/s");
xstring(.67,.46,"400 kbps");
xstring(.6,.8,"Frame duration = 1/50000 = 20 microseconds");
xstring(.5,.65,"Frame : 8 bits");
xstring(.69,.65,"Frame : 8 bits");
xstring(.88,.65,"Frame : 8 bits");
xstring(.51,.58,"00");
xstring(.55,.58,"10");
xstring(.59,.58,"00");
xstring(.63,.58,"11");
xstring(.7,.58,"01");
xstring(.74,.58,"11");
xstring(.78,.58,"10");
xstring(.82,.58,"00");
xstring(.89,.58,"11");
xstring(.93,.58,"01");
xstring(.97,.58,"10");
xstring(1.01,.58,"10");
xstring(.48,.58,"...");
xrects([.5 .54 .58 .62;.63 .63 .63 .63;.04 .04 .04 0.04;.06 .06 .06 .06]);
xrects([.69 .73 .77 .81;.63 .63 .63 .63;.04 .04 .04 0.04;.06 .06 .06 .06]);
xrects([.88 .92 .96 1.0;.63 .63 .63 .63;.04 .04 .04 0.04;.06 .06 .06 .06]);
xset("thickness",2);
xpoly([.45 1.1],[.55 .55]);