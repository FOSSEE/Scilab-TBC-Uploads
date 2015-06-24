clear;
clc;
disp("--------------Example 8.2---------------")
printf("Consider a circuit-switched network that connects computers in two remote offices of a private company. The offices are\nconnected using a T-1 line leased from a communication service provider. There are two 4 X 8 (4 inputs and 8 outputs)\nswitches in this network. For each switch, four output ports are folded into the input ports to allow communication between\ncomputers in the same office. Four other output ports allow communication between the two offices."); // display example explanation
// display the figure
clf();
xname("--------------Example 8.2----------------");
xset("font size",3);
xstring(0,.9,"Circuit-switched network");
xstring(.12,.67,"4x8 switch");
xstring(.62,.67,"4x8 switch");
xstring(.3,.63,"T-1 line with 1.544 Mbps");
xrects([0 .1 .6;.89 .8 .8;.8 .1 .1;.6 .3 .3]);
xpoly([.23 .28 .23],[.73 .68 .63],"lines",1);
xpoly([.57 .52 .57],[.73 .68 .63],"lines",1);
for i=0:2
    xpoly([.2 .23],[.72-(i/25) .72-(i/25)]);
    xpoly([.57 .6],[.72-(i/25) .72-(i/25)]);
end

for i=0:3
    xpoly([.11+(i/45) .11+(i/45)],[.5 .45-(i/25)]);
    xpoly([.11+(i/45) .09-(i/45)],[.45-(i/25) .45-(i/25)]);
    xpoly([.09-(i/45) .09-(i/45)],[.45-(i/25) .79-(i/12)]);
    xpoly([.69-(i/45) .69-(i/45)],[.5 .45-(i/25)]);
    xpoly([.69-(i/45) .71+(i/45)],[.45-(i/25) .45-(i/25)]);
    xpoly([.71+(i/45) .71+(i/45)],[.45-(i/25) .79-(i/12)]);
    xpoly([-.05 .1],[.79-(i/12) .79-(i/12)]);
    xpoly([.7 .85],[.79-(i/12) .79-(i/12)]);
    xstring(-.13,.79-(i/12),"Computer");
    xstring(.86,.79-(i/12),"Computer");
    xfarc(.085-(i/45),.795-(i/12),.01,.01,0,64*360);
    xfarc(.705+(i/45),.795-(i/12),.01,.01,0,64*360);
end
xset("thickness",2.5);
xpoly([.28 .52],[.68 .68]);

