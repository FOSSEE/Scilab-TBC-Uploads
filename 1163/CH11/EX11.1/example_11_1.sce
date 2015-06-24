clear;
clc;
disp("--------------Example 11.1---------------")
//explain the example
printf("This an example of communication using the simplest protocol. It is very simple. The sender sends a sequence of frames\nwithout even thinking about the receiver. To send three frames, three events occur at the sender site and three events at the receiver site.\nThe data frames are shown by tilted boxes in the figure; the height of the box defines the transmission time difference between the first bit\nand the last bit in the frame.");
// display the figure
clf();
xname("--------------Example 11.1----------------");
xrects([.3 .6;.7 .7;.05 .05;.06 .06]);
xset("font size",3);
xstring(.3,.75,"Sender");
xstring(.6,.75,"Reciever");
xstring(.32,.65,"A");
xstring(.62,.65,"B");
xstring(.22,.327,"Request");
xstring(.22,.427,"Request");
xstring(.22,.527,"Request");
xstring(.67,.29,"Arrival");
xstring(.67,.39,"Arrival");
xstring(.67,.49,"Arrival");
xstring(.35,.52,"Frame",8);
xstring(.35,.42,"Frame",8);
xstring(.35,.32,"Frame",8);
xarrows([.29 .325],[.55 .55],.3);
xarrows([.29 .325],[.45 .45],.3);
xarrows([.29 .325],[.35 .35],.3);
xarrows([.625 .66],[.5 .5],.3);
xarrows([.625 .66],[.4 .4],.3);
xarrows([.625 .66],[.3 .3],.3);
xset("color",4.9);
xfpoly([.325 .625 .625 .325],[.56 .51 .46 .51]);
xfpoly([.325 .625 .625 .325],[.46 .41 .36 .41]);
xfpoly([.325 .625 .625 .325],[.36 .31 .26 .31]);
xset("color",0);
xset("line style",2);
xarrows([.325 .325],[.64 .14],.3);
xarrows([.625 .625],[.64 .14],.3);
xstring(.3,.1,"Time");
xstring(.6,.1,"Time");