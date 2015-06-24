

//example 12.4
//design a slopeing glacis
clc;funcprot(0);
//given
q=10;                     //maximum discharge intensity on weir crest
hfl=255;                  //H.F.L before construction of weir
rb=249.5;                 //R.L of river bed
pl=254;                   //pond level
s=1;                      //heigth of crest shutter
dhw=251.5;                //anticipated downstream water level in river when water is dischrging with pond level upstream
br=0.5;                   //bed retrogression
f=0.9;                    //Laecey silt factor
Ge=1/7;                   //permissible exit gradient
flux=1;                   //permissible afflux

cl=pl-s;                   //crest level
mprintf("crest level=%f m.",cl);
K=(q/1.7)^(2/3);
tel_up=cl+K;
tel_up=round(tel_up*100)/100;
mprintf("\nelevation of u/s T.E.L=%f m.",tel_up);
R=1.35*(q^2/f)^(1/3);
R=round(R*10)/10;
mprintf("\nregime scour depth=%f m.",R);
V=q/R;                     //regime velocity
vh=V^2/(2*9.81);           //velocity head
hfl_up=tel_up-vh;
tel_down=hfl+vh;
flux=hfl_up-hfl;
flux=round(flux*100)/100;
mprintf("\nafflux=%f. which is near to permissible",flux);
hfl_down=hfl-br;             //downstream H.F.L after retrogression
tel_down=tel_down-br;        //downstream T.F.L after retrogression
Hl=tel_up-tel_down;          //loss of head in flood
Hl=round(Hl*100)/100;
mprintf("\nloss of head in at high flood=%f m.",Hl);
K=pl-cl;              //head over crest
q_=1.7*(K)^1.5;
Hl_=pl-dhw;             //loss of head
mprintf("\nloss of head=%f m.",Hl_);
Ef2=4.3;
Ef2_=1.7;              //from Blench curve
jump=tel_down-Ef2;
jump_=251.5-Ef2_;      //level at which jump will form
Ef1=Ef2+Hl;
Ef1_=Ef2_+Hl_;
D1=1.03;
D1_=0.15;                //calculated from Ef1 and Ef1_ respectively
D2=3.96;D2_=1.68;       //calculated from Ef2 and Ef2_ respectively
hj=D2-D1;
hj_=D2_-D1_;            //heigth of jump
concrete=5*hj;
concrete_=5*hj_;         //length of concrete floor
mprintf("\n\nHydraulic jump calculation:");
mprintf("\nheigth of jump for high flood condition=%f m.",hj);
mprintf("\nlength of concrete floor for high flood condition=%f m.",concrete);
mprintf("\nheigth of jump for pond level condition=%f m.",hj_);
mprintf("\nlength of concrete floor for high pond level condition=%f m.",concrete_);

cw=2;                    //crets width
us=2;                    //upstream slope
ds=3;                    //downstream slope
l=15;
mprintf("\n\n upstream slope of glacis=%i:1.",us);
mprintf("\ndownstream slope of glacis=%i:1.",ds);
mprintf("\nhorizontal length of floor beyond the toe=%i m..",l);

R=6.5;
sh_up=hfl_up-1.5*R;
sh_down=hfl_down-2*R;
sh_up=round(sh_up*100)/100;
mprintf("\nR.L of bottom of upstream sheet pile=%f m.",sh_up);
mprintf("\nR.L of downstream sheet pile=%f m.",sh_down);
mprintf("\nprovide intermediate sheet pile at d/s toe of glacis.");
Hs=pl-249.6;                       //maximum percolation head
d=249.6-sh_down;                   //depth of d/s cut-off
n=Ge*d/Hs;                          //n=1/(%pi*lambda^0.5);
//from khosla exit gradient curve
alpha=1.5;
b=alpha*d;
mprintf("\n\nlength of impervious floor=%f m.",b);
fl=(2*(253-249.5))+2+(3*(253-249.6))+15;
us=36-fl;
mprintf("\nlength of floor already provide=%f m.",fl);
mprintf("\nwhich is more than required from permissible exit gradient.\nno upstream floor is required.");
mprintf("\nprovide %f m upstream floor so that total length becomes 36 m.",us);
alpha_1=0.089; 
alpha_2=0.225;            //alpha_=1/alpha
b1=21;
alpha=4.44;
mprintf("\n\nPressure percent at points:");
point=['C1' 'D1' 'C2' 'E2' 'D2' 'D3' 'E3'];
bc=[72 82 31.5 45.5 58.5 29 44];
crt=[3.1 0 3.5 0 -3.2 0 0 -3.6];
crs=[0 0 0 0 2.3 0 0 0];
cri=[3.7 0 6.4 0 -2.4 0 -6.4];
mprintf("\nPoints       Before correction            After correction");
for i=1:7
    after(i)=bc(i)+crt(i)+crs(i)+cri(i);
    mprintf("\n%s                   %i                       %f",point(i),bc(i),after(i));
end
Hs=254-249.6;               //no flow condition
Hs_=256.13-254.5;           //high flood condition
Hs__=254-251.5;             //flow at pond level
mprintf("\n\nelevation of subsoil H.G above datum:");
mprintf("\nno flow condition:");
fie1=1*Hs;
fid1=0.82*Hs;
fic1=0.788*Hs;
fie2=0.552*Hs;
fid2=0.455*Hs;
fic2=0.414*Hs;
fie3=0.34*Hs;
fid3=0.29*Hs;
fic3=0;
fie1=round(fie1*100)/100;fid1=round(fid1*100)/100;fic1=round(fic1*100)/100;
fie2=round(fie2*100)/100;fid2=round(fid2*100)/100;fic2=round(fic2*100)/100;
fie3=round(fie3*100)/100;fid3=round(fid3*100)/100;fic3=round(fic3*100)/100;
mprintf("\nfie1=%f.;fid1=%f.;fic1=%f.\nfie2=%f.;fid2=%f.;fic2=%f.\nfie3=%f.;fid3=%f.;fic3=%f.",fie1,fid1,fic1,fie2,fid2,fic2,fie3,fid3,fic3);
mprintf("\nhigh flood condition:");
fie1=1*Hs_;
fid1=0.82*Hs_;
fic1=0.788*Hs_;
fie2=0.552*Hs_;
fid2=0.455*Hs_;
fic2=0.414*Hs_;
fie3=0.34*Hs_;
fid3=0.29*Hs_;
fic3=0;
fie1=round(fie1*100)/100;fid1=round(fid1*100)/100;fic1=round(fic1*100)/100;
fie2=round(fie2*100)/100;fid2=round(fid2*100)/100;fic2=round(fic2*100)/100;
fie3=round(fie3*100)/100;fid3=round(fid3*100)/100;fic3=round(fic3*100)/100;
mprintf("\nfie1=%f.;fid1=%f.;fic1=%f.\nfie2=%f.;fid2=%f.;fic2=%f.\nfie3=%f.;fid3=%f.;fic3=%f.",fie1,fid1,fic1,fie2,fid2,fic2,fie3,fid3,fic3);
mprintf("\nflow at pond level:");
fie1=1*Hs__;
fid1=0.82*Hs__;
fic1=0.788*Hs__;
fie2=0.552*Hs__;
fid2=0.455*Hs__;
fic2=0.414*Hs__;
fie3=0.34*Hs__;
fid3=0.29*Hs__;
fic3=0;
fie1=round(fie1*100)/100;fid1=round(fid1*100)/100;fic1=round(fic1*100)/100;
fie2=round(fie2*100)/100;fid2=round(fid2*100)/100;fic2=round(fic2*100)/100;
fie3=round(fie3*100)/100;fid3=round(fid3*100)/100;fic3=round(fic3*100)/100;
mprintf("\nfie1=%f.;fid1=%f.;fic1=%f.\nfie2=%f.;fid2=%f.;fic2=%f.\nfie3=%f.;fid3=%f.;fic3=%f.",fie1,fid1,fic1,fie2,fid2,fic2,fie3,fid3,fic3);

mprintf("\n\nPrejump profile:");
mprintf("\nhigh flood condition:");
dist=[3 6 8.4];                 //distance
glacis=[252 251 250.32];        //R.L of glacis
D1=[1.3 1.15 1.03];
mprintf("\nEf1              D1");
for i=1:3
    Ef1(i)=256.25-glacis(i);
    mprintf("\n%f         %f",Ef1(i),D1(i));
end
mprintf("\npond level flow:");
dist=[3 6 9 9.6];             //distance
glacis=[252 251 250 249.9];       //R.Lof glacis
D1=[0.31 0.23 0.16 0.15];
mprintf("\nEf1              D1");
for i=1:4
    Ef1(i)=254-glacis(i);
    mprintf("\n%f         %f",Ef1(i),D1(i));
end


rho=2.24;
Uf=4;                           //unbalanced head for high flood condtion
Us=2.56;                        //unbalanced static head
Hf=2*Uf/3;
t=Hf/(rho-1);
t=round(t*10)/10;
mprintf("\n\nfloor thickness at the point of formation of hydraulic jump=%f m.",t);
Uf=2.9;                           //unbalanced head for high flood condtion
Us=2.2;                        //unbalanced static head
Hf=2*Uf/3;
t=Us/(rho-1);
t=round(t*10)/10;
mprintf("\nfloor thickness at the point of formation of hydraulic jump at the pond level condition=%f m.",t);
P=1.5;                        //pressure head at d/s end of floor
t=P/(rho-1);
t=round(t*10)/10;
mprintf("\n\nfloor thickness at downstream side of sloping glacis=%f m.",t);
D=rb-sh_up;                 //depth of u/s scour hole above bed level
a=1.5*D;
a=round(a*10)/10;
mprintf("\n\nminimum length of upstream launching apron=%f m.",a);
mprintf("\nprovide 1.5 m thick apron for length of 5 m.");
D=249.6-241.5;
a=1.5*D;
mprintf("\n\nminimum length of downstream launching apron=%f m.",a);
mprintf("\nprovide 1.5 m thick apron for length of 12 m.");

