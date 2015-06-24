

//example 18.2
//design an unflumed straight glacis non-meter fall
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
Ge=1/6;            //permissible exit gradient

//design of crest
mprintf("design of crest:");
E=(Q/(1.84*L))^(2/3);
V=Q/((L+D)*D);
vh=V^2/(2*9.81);
tel_up=sl_u+vh;
cl=tel_up-E;
w=2*E/3;
w=round(w*10)/10;
mprintf("\nlength of crest=%f m.",L);
mprintf("\nwidth of crest=%f m.",w);
//design of cistern
q=Q/L;
Hl=1.5;
//from blench curve
Ef2=1.44;
cistern=sl_d+0.03-1.25*Ef2;
mprintf("\n\nR.L of cistern=%f m. > d/s bed level.",cistern);
mprintf("\nkeep R.L of cistern at 214.5 m.");
l=6*Ef2;
mprintf("\nlength of cistern=%f m.",l);
mprintf("\nprovide cistern of 9 m length ");
d=bl_d-214.5;
mprintf("\ndepth of cistern=%f m.",d);

//design of impervious floor
d1=D/3;
mprintf("\n\ndesign of impervious floor:");
mprintf("\nprovide 0.4 m wide and 1 m deep curtain wall at u/s.");
d2=D/2;
mprintf("\nprovide 0.4 m wide and 1 m deep curtain wall at d/s.\nthe curtain wall will project the above the d/s bed by 0.18 m.");
Hs=cl-bl_d;
d2=1;
n=d2*Ge/Hs;       //n=1/(%pi*(lambda)^0.5)
//from khosla exit curves we get
alpha=40;
lambda=(1/(%pi*n))^2;
alpha=((2*lambda-1)^2-1)^0.5;
b=alpha*d2;
//since length is to excessive
d2=2;
n=d2*Ge/Hs;       //n=1/(%pi*(lambda)^0.5)
//from khosla exit curves we get
alpha=10;
lambda=(1/(%pi*n))^2;
alpha=((2*lambda-1)^2-1)^0.5;
b=alpha*d2+1;
mprintf("\ntotal length=%i m.\nlength of cistern=9 m.\nlength of d/s glacis=5.88 m.\nwidth of crest=0.6 m.\nlength of u/s glacis=0.47 m.\nbalance to be provided to u/s of the u/s glacis=4.05 m.",b);

//pressure calculations
mprintf("\n\npressure calculations:");
mprintf("\nupstream curtain wall:");
d1=1;b=20;
alpha_=d1/b;
t=0.3;
fic1=100-22;
fid1=100-15;
corec=(fid1-fic1)*t/d1
fic1=fic1+corec;
mprintf("\ncorrected fi_c1=%f percent.",fic1);
mprintf("\ndownstream curtain wall:");
d2=2;b=20;
alpha_=d2/b;
t=0.5;
fie=29;
fid=21;
corec=(fie-fid)*t/d2
fie=fie-corec;
mprintf("\ncorrected fi_e=%f percent.",fie);
mprintf("\ntoe of glacis:");
//assuming linear variation of pressure
p=fie+(80-fie)*9/20;
mprintf("\npressure at downstream of the glacis=%f percent.",p);

//floor thickness
rho=2.24;
mprintf("\n\nfloor thickness:\nprovide minimum thickness of 0.3 m at the u/s floor.");
static=p*2.44/100+(bl_d-214.5);
t=static/(rho-1);
t=round(t*100)/100;
mprintf("\nfloor thickness required at toe of glacis=%f m.\nprovide 1.5 m thick floor for length of 3 m.",t);
p=fie+(80-fie)*6/20;
static=p*2.44/100+(bl_d-214.5);
t=static/(rho-1);
t=round(t*100)/100;
mprintf("\nfloor thickness required at 3m from toe of glacis=%f m.\nprovide 1.3 m thick floor from 3 m to 6.5 m from toe of glacis.",t);
t=0.27*2.44/(rho-1);
t=round(t*100)/100;
mprintf("\nthickness of d/s end of cistern=%f m.\nprovide thickness of 0.6 m at d/s end of floor.",t);

//design of d/s protection
mprintf("\n\nno bed protection is needed as deflector wall is provided.");
sp=3*D;
mprintf("\nlength of side protection=%f m.\nprovide 5.5 m length of 20 cm thick brick pitching beyond impervious floor.\npitching will rest on toe wall 0.4 m wide and 0.9 m deep.\nprovide 0.4 m wide profile at the end of pitching",sp);
//design of u/s approach
mprintf("\n\nu/s wing wall is splayed at 45 degree from u/s end of impervious floor.\nextend 1 m into earthen banks from line of F.S.L.");
