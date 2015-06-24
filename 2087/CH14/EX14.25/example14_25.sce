

//example 14.25
//calculate bed load transported by the channel in tonnes per day
clc;funcprot(0);
//given
S=1/5000;          //bed slope
B=40;              //width of channel
D=2.6;             //depth of channel
d=0.38;            //mean diameter of bed material
n=0.021;           //Manning n
D65=0.64D-3;       //bed material size(m)
w=1000;            //density of water
//B/D as large tau_c=0.075*d;
tau_c=0.075*d;
tau_b=w*D*S;
N1=(D65)^(1/6)/24;
r=N1/n;
qs=4700*24*(tau_b*r^1.5-tau_c)^1.5/1000;
qs40=qs*40;
mprintf("bed load transported by the channel =%i t/m/day.",qs40);
