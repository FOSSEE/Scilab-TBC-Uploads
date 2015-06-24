clear;
clc;
disp("--------------Example 11.2---------------")
//explain the example
printf("This is an example of communication using the Stop and Wait protocol. It is still very simple. The sender sends one frame and\nwaits for feedback from the receiver. When the ACK arrives, the sender sends the next frame. Sending two frames in this\nprotocol involves the sender in four events and the receiver in two events.");
// display the figure
clf();
xname("--------------Example 11.2----------------");
xrects([.3 .6;.7 .7;.05 .05;.06 .06]);
xset("font size",3);
xstring(.3,.75,"Sender");
xstring(.6,.75,"Reciever");
xstring(.32,.65,"A");
xstring(.62,.65,"B");
xstring(.35,.52,"Frame",8);
xstring(.35,.3,"Frame",8);
xstring(.58,.41,"ACK",-8);
xstring(.58,.19,"ACK",-8);
xstring(.22,.527,"Request");
xstring(.22,.3,"Request");
xstring(.24,.38,"Arrival");
xstring(.24,.16,"Arrival");
xstring(.67,.49,"Arrival");
xstring(.67,.27,"Arrival");
xarrows([.29 .325],[.55 .55],.3);
xarrows([.29 .325],[.32 .32],.3);
xarrows([.325 .29],[.39 .39],.3);
xarrows([.325 .29],[.17 .17],.3);
xarrows([.625 .66],[.5 .5],.3);
xarrows([.625 .66],[.28 .28],.3);
xset("color",4.9);
xfpoly([.325 .625 .625 .325],[.56 .51 .46 .51]);
xfpoly([.325 .625 .625 .325],[.34 .29 .24 .29]);
xfpoly([.325 .625 .625 .325],[.41 .46 .41 .36]);
xfpoly([.325 .625 .625 .325],[.19 .24 .19 .14]);
xset("color",0)
xset("line style",2);
xarrows([.325 .325],[.64 .1],.3);
xarrows([.625 .625],[.64 .1],.3);
xstring(.3,.06,"Time");
xstring(.6,.06,"Time");
xset("font size",8);
xstring(.46,.08,".");
xstring(.46,.06,".");
xstring(.46,.1,".");