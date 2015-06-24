

//example 19.3
//design a syphon aqueduct
clc;funcprot(0);
//given
Q=25;              //design discharge of canal
B=20;              //bed width of canal
D=1.5;             //depth of water in canal
bl=160;            //bed level of canal
hfq=400;          //high flood discharge of drainage
hfl=160.5;        //high flood level of drainage
bl_drain=158;     //bed level of drainage
gl=160;           //general ground level

//desing of drainage water-way
P=4.75*(hfq)^0.5;     //laecey P-Q formula
mprintf("design of drainage water-way:\nwetted perimeter of river=%i m.\nprovide 13 spans of 6 m each,separated by 12 piers each of 1.25 m thick.",P);
t=78+15;
mprintf("\ntotal length of water-way=%i m.",t);
v=2;                //velocity through syphon
hb=hfq/(78*v);
ac=hfq/(6*2.5*1.3);   //calculation is wrong in book
hb=round(hb*100)/100;
ac=round(ac*100)/100;
mprintf("\nheight of barrels=%f m.\nprovide rectangular barrels 6 m wide and 2.5 m high.\nactual velocity through barrels=%f m/sec.",hb,ac);

//design of canal waterway
mprintf("\n\ndesign of canal waterway:\nType 3 aqueduct is adopted.");
l1=B-10;
l2=(20-10)*3/2;
mprintf("\nproviding a splay 2:1 in expansion,length of contraction transition=%i m.\nproviding a splay of 3:1 in expansion,length of expansion transition=%i m.",l1,l2);
mprintf('\nIn transition side slopes are warped from original slope of 1.5:1 to vertical.');

//design of levels of different sectionn
mprintf("\n\ndesign of levels of different sectionn:\nat section 4-4:");
A=(B+1.5*D);        //area
V=Q/A;              //velocity of flow
vh=V^2/(2*9.81);    //velocity head
ws=gl+D;            //R.L of water surface
tel=ws+vh;
tel=round(tel*1000)/1000;
mprintf("\nR.L of T.E.L=%f m.\n at section 3-3:",tel);
A=10*D;                    //area of trough
V=Q/A;                    //velocity
vh1=V^2/(2*9.81);          //velocity head
le=0.3*(vh1-vh);   //loss of head in expansion from section 3-3 to 4-4
tel=tel+le;
rlw=tel-vh1;
rlb=rlw-D;
tel=round(tel*1000)/1000;
rlb=round(rlb*1000)/1000;
mprintf("\nelevation of T.E.L=%f m.\nR.L of bed to maintain constant water depth=%f m.",tel,rlb);

//at section 2-2
R=A/P;
N=0.016;
S=V^2*N^2/R^(4/3);            //from manning's formula
L=93;                        //length of trough
hl=L*S;                        //head loss
tel=tel+hl;
rlw=tel-vh1;
rlb=rlw-D;
tel=round(tel*1000)/1000;
rlb=round(rlb*1000)/1000;
mprintf("\nat section 2-2:\nR.L of T.E.L=%f m.\nR.L of bed to maintain constant water depth=%f m.",tel,rlb);

//at section 1-1
hl=0.2*(vh1-vh);   //loss of hed in contraction transition
tel=tel+hl;
rlw=tel-vh;
rlb=tel-D;
tel=round(tel*1000)/1000;
rlb=round(rlb*1000)/1000;
mprintf("\nat section 1-1:\nR.L of T.E.L=%f m.\nR.L of bed to maintain constant water depth=%f m.",tel,rlb);

//design of contraction transition
//it is designed on the basis of chaturvedi's formula
Bo=20;
Bf=10;
L=10;
//from chaturvedi formula we get relation between x and Bx as: x=15.45(1-(10/Bx)^1.5);
Bx=[10:1:20];
mprintf("\n\ndesign of contraction transition on the basis of chaturvedi formula:\nBx            x");
for i=1:11
    x(i)=15.45*(1-(10/Bx(i))^1.5);
    x(i)=round(x(i)*100)/100;
    mprintf("\n%i         %f",Bx(i),x(i));
end

//design of expansion transition on the basis of chaturvedi formula
L=15;
Bf=10;Bo=20;
//from chaturvedi formula we get relation between x and Bx as: x=23.15(1-(10/Bx)^1.5);
mprintf("\n\ndesign of expansion transition on the basis of chaturvedi formula:\nBx            x");
for i=1:11
    x(i)=23.15*(1-(10/Bx(i))^1.5);
    x(i)=round(x(i)*100)/100;
    mprintf("\n%i         %f",Bx(i),x(i));
end

//design of trough
mprintf("\n\ndesign of the trough:");
mprintf("\nflumed water way of canal=10 m.\ntrough carrying canal will divide into two compartments each 5 m wide an dseparated by 0.3 m thick partiions.\nheigth of trough will be = 2 m.\ntrough iss constructed using monolithic reinforced concrete.\nthe outer and inner walls ca be kept 0.4 m thick.\nthus,outer width of trough = 11.1 m.");

//head loss through syphon barrels
V=2.05;        //velocity through barrels
f1=0.505;      //coefficient of loss of head at entry
a=0.00316;b=0.030;
R=(6*2.5)/(2*(6+2.5));
f2=a(1+b/R);
L=11.1;          //length of barrel
h=(1+f1+f2*L/R)*V^2/(2*9.81);
hfl_up=hfl+h;
h=round(h*1000)/1000;
hfl_up=round(hfl_up*1000)/1000;
mprintf("\n\nhead loss through syphon barrels=%f m.\nupstream H.F.L=%f m.",h,hfl_up)

//uplift pressure on the roof
bt=gl-0.4;            //R.L of bottom of the trough
hl=0.505*V^2/(2*9.81);
u=hfl_up-hl-159.6;
up=u*9.81;
mprintf("\n\nuplift pressure on the roof=%f kN/square m.\ntrough slab is 0.4 m thick and exert a downward load of 9.42 kN.",up);
mprintf("\nth ebalance of the uplift pressure has to be resisted by bending action of trough slab.\nso,reinforcement has to be provided at the top of the slab.");

//uplift on the floor of the barrel and its design
//(a) static head
mprintf("\n\nuplift on the floor of the barrel and its design:\n(a) static head:");
bf=bt-2.5;          //R.L of barrel floor
t=0.8;             //tentative thickness of floor
bot=bf-t;
static=bl_drain-bot;
static=round(static*100)/100;
mprintf("\nstatic uplift on the floor=%f m.",static);

//(b) seepage head
L=10;            //length of u/s transition
bs=3;            //half the barrel span
df=11;           //end drainage floor
tcl=24;          //total creep length
tsh=161.5-bl_drain;  //total seepage head
rs=tsh*(1-13/tcl);    //residual seepage at B
tu=(static+rs)*9.81;
tu=round(tu*100)/100;
mprintf("\n(b) seepage head:\ntotal uplift=%f kN/square m.\nprovide thickness of floor 0.8 m",tu);
bending=tu-17.58;
bending=round(bending*100)/100;
mprintf("\nuplift to be resisted by bending action of floor=%f kN/square m.",bending);

//design of cut-off and protection works for drainage floor
mprintf("\n\ndesign of cut-off and protection works for drainage floor:");
Q=400;f=1;
R=0.47*(Q/f)^(1/3);
d_up=1.5*R;                      //depth of u/s cut-off
bot_up=hfl_up-d_up;             //R.L of bottom of u/s cut-off
d_down=1.5*R;                   //depth of d/s cut-off
bot_down=hfl-d_down;           //R.L of bottom of d/s cut-off
l_down=2.5*(bl_drain-bot_down);
l_down1=2*(bl_drain-bot_up);
bot_up=round(bot_up*100)/100;
bot_down=round(bot_down*100)/100;
l_down=round(l_down);
l_down1=round(l_down1);
mprintf("\nR.L of bottom of u/s cut-off=%f m.\nR.L of bottom of d/s cut-off=%f m.",bot_up,bot_down);
mprintf("\nlength of d/s protection consisting of 40 cm brick pritching=%f m.\npitching is supported by toe wall 0.4 m wide and 1.5 m deep at its d/s end.\nlength of d/s protection consisting of 0.4 cm brick pritching=%f m.\npitching is supported by toe wall 0.4 m wide and 1 m deep at its u/s end.",l_down,l_down1);
