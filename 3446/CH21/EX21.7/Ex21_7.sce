// Exa 21.7
// To determine the PER(Packet error rate) for FH(Frequency Hopping packet) and DS(Direct spread packet).

clc;
clear all;

D=1000*8;  //packet size in bits
R=2*10^6;  //transmission rate in bps
L=3; //msec(Dwell time)
H=0.625; //msec(Duration of BT packet)

//solution
Tw=10^3*D/R;   //the packet duration of IEEE 802.11 in msec
H_L=1;
G=(H_L)*L-Tw-H;
Gm=abs(G);
PER_FH=1-((1-Gm/L)*(78/79)^(H_L)+Gm/L*(78/79)^((H_L)-G/Gm));
PER_DS=1-((1-Gm/L)*(57/79)^(H_L)+Gm/L*(57/79)^((H_L)-G/Gm));
printf('The PER for FH packet and PER for DS packet are %d percent & %.2f percent respectively',round(PER_FH*100),PER_DS*100);
disp("The collision probability with 802.11 DS is much higher than with 802.11 FH.")
