

//example 18.1
//design Sarda type fall
clc;funcprot(0);
//given
Q=40;                //full supply discharge
sl_u=218.3;          //supply level at upstream
sl_d=216.8;          //supply level at downstream
D=1.8;              //suplly depth
L=26;               //bed width
bl_u=216.5;         //bed level upstream
bl_d=215;           //bed level downstream
drop=1.5;

//from  the eqauation; Q=1.99LH^1.5*(H/B)^(1/6);
//B=0.55*(H+d)^0.5;
//H+d=drop+D;
//we get
H=(0.774)^0.6;
d=3.3-H;
Hc=D-H;
d=round(d*100)/100;
H=round(H*100)/100;
Hc=round(Hc*100)/100;
mprintf("H=%f m.\nd=%f m.",H,d);
mprintf("\ncrest height above bed=%f m.",Hc);

//adopt trapezoidal crest
B=1;               //top width
mprintf("\n\nD/S batter=1:3; U/S batter=1:8.");
Va=Q/((27+D)*D);
vh=Va^2/(2*9.81);
tel_up=sl_u+vh;
crest=sl_u-H;
E=sl_u-crest;
mprintf("\nR.L of crest=%f m.",crest);
mprintf('\nE=%f m.',E);
//design of cistern
x=(E*drop)^(2/3)/4;               //depth of cistern
lc=5*(E*drop)^0.5;                //length of cistern
cb=bl_d-x;
x=round(x*100)/100;
cb=round(cb*1000)/1000;
lc=round(lc*10)/10;
mprintf("\n\ndepth of cistern=%f m.",x);
mprintf("\nlength of cistern=%f m.",lc);
mprintf("\nR.L of bed of cistern=%f m.",cb);
mprintf("\nkeep cistern at R.L 214.69.");
//design of impervious floor
Hs=2.44;           //seepage head
c=8;              //Bligh's coefficient
li=Hs*c;
d1=1;d2=1.6;
vl=2*(d1+d2);
lh=li-vl;
mprintf("\n\ndesign of impervious floor:");
mprintf("\nprovide upstream cut-off=%i m.; downstream cut-off=%f m.",d1,d2);
mprintf("\nlength of horizontal impervious floor=%f m.",lh);
mprintf("\nprovide 15 m length impervious floor.");
ld=2*(D+1.2)+drop;
mprintf("\nminimum length of impervious floor to the d/s of toe of crest wall=%f m.",ld);
mprintf("\nprovide ld=8 m.");
bl=15-8;
mprintf("\nthe balance of the length %i m is to be provided under and u/s of the crest.",bl);

tcl=15+2*(1+16);
mprintf("\n\nuplift pressure is counter balanced by weigth of water.\n hence provide thickness of 0.4 m.");
rho=2.24;              
static=2.44*(1-0.446)+x;
t=static/(rho-1);
t=round(t*100)/100;
mprintf("\nfor other points; thickness required =%f m.",t);
mprintf("\nprovide thickness of 1.40 m.");
mprintf("\nat downstream end of floor provide thickness of 0.6 m overlaid by 0.2 m brick pitching.");

n=d2/(Hs*5);             //n=1/%pi*(lambda)^0.5
//from khosla exit curve we get
alpha=10.5;
lambda=(1/(%pi*n))^2;
alpha=((2*lambda-1)^2-1)^0.5;
b=alpha*d2;
b=round(b*100)/100;
mprintf("\n\nchecking of floor thickness by khosla theory:");
mprintf("\nlength of floor provided=%f m. > length by Bligh theory.",b);
b=15;
d2=1.8;
alpha=b/d2;
n=0.145;
Ge=Hs*n/d2;
Ge=round(Ge*10)/10;
mprintf("\nexit gradient after increase in depth cut-off=%f. which is in permissible limit",Ge);
mprintf('\nprovide depth cut-off to 1.8 m.');
//calculation of pressure
mprintf("\n\ncalculation of pressure:");
mprintf("\nU/S cut-off:");
d1=1;
b=15;
alpha_=d1/b;
fic1=100-24;
fid1=100-17;
t=0.4;
fic1=fic1+(fid1-fic1)*t/d1;
mprintf("\ncorrected fic1=%f percent.",fic1);
mprintf("\nD/S cut-off wall:");
d2=1.8;
b=15;
alpha_=d1/b;
fie2=31;
fid2=21.5;
t=0.6;
fie2=fie2-(fie2-fid2)*t/1.8;
fie2=round(fie2*10)/10;
mprintf("\ncorrecte fie2=%f percent.",fie2);
//calculation of thickness
mprintf("\n\nprovide a minimum thickness of 0.4 m for u/s floor.");
pre=fie2+(fic1-fie2)*8/b;
static=pre*Hs/100+x;
t=static/(rho-1);
t=round(t*100)/100;
mprintf("\nthickness at d/s toe of crest=%f m.",t);
mprintf("\nprovide thickness of 1.4 m thick concrete overlaid by 0.2 m brick pitching.");
pre=fie2+(fic1-fie2)*5/b;
static=pre*Hs/100+x;
t=static/(rho-1);
t=round(t*100)/100;
mprintf("\nthickness at 3 m from d/s toe of crest=%f m.",t);
mprintf("\nprovide thickness of 1.2 m thick concrete overlaid by 0.2 m brick pitching.");
pre=fie2+(fic1-fie2)*2/b;
static=pre*Hs/100;                //calculation is wrong in book
t=static/(rho-1);
t=round(t*100)/100;
mprintf("\nthickness at 6m from d/s toe of crest=%f m.",t);
mprintf("\nprovide thickness of 0.7 m thick concrete overlaid by 0.2 m brick pitching.");
//design of downstream wings
wing=6*(E*drop)^0.5;
hw=D+0.5;
mprintf("\n\nheigth of top of downstream wings above the bed=%f m.",hw);
projec=hw*3;
mprintf("\nlength of warped wing measured along centre line of canal=%f m.",projec);
//downstream pitching
l=9+2*1.5;
mprintf("\n\nlength of bed pitching=%f m.",l);
mprintf("\nlength of sloping pitching=7 m.\nlength of horizontal pitching=6 m.");
mprintf("\nprovide one toe wall of 1 m depth and 0.4 m width.");
mprintf("\nside pitching is curtailed at 45 degree from the end of bed pitching in plan.\nsupprot the side pitching on toe wall 0.4 m thick and 1 m deep. ");
//energy dissipators
q=Q/L;
dc=(q^2/9.81)^(1/3);
mprintf("\n\nsize and position of friction blocks:");
L=2*dc;
w=dc;
h=dc;
di=1.5*dc;
L=round(L*10)/10;
w=round(w*10)/10;
h=round(h*10)/10;
di=round(di);
mprintf("\nlength of block=%f m.\nwidth of block=%f m.\nheight of block=%f m.\ndistance from toe of crest=%f m.",L,w,h,di);
mprintf("\nprovide two rows staggered ata distance of 1 m from toe of crest.");
mprintf("\nsize and position of cube blocks:");
L=D/10;
w=D/10;
h=w;
L=round(L*10)/10;
w=round(w*10)/10;
h=round(h*10)/10;
mprintf("\nlength of block=%f m.\nwidth of block=%f m.\nheight of block=%f m.",L,w,h);
mprintf("\nprovide two rows staggered at the end of impervious floor.");
//u/s approach
r=6*H;
mprintf("\n\nprovide wing wall segmental with 5 m radius subtending angle of 60 degree at the centre.");
