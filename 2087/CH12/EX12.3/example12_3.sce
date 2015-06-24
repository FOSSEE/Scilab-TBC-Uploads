

//example 12.3
//design a vertical drop weir on Bligh's theory
//test floor by Khosla's theory
clc;funcprot(0);
//given
Q=2800;                    //maximum flood discharge
hfl=285;                   //H.F.L before construction
hw=278;                    //minimum water level
fsl=284;                   //F.S.L of canal
c=12;                      //coefficient of creep
flux=1;                    //allowable afflux
Ge=1/6;                    //permissible exit gradient
rho=2.24;                  //specific gravity of concrete

//Hydraulic calculation
L=4.75*Q^0.5;
q=Q/L;
q=round(q*10)/10;
mprintf("Hydraulic calculation:");
mprintf("\ndischarge per unit width of river=%f cumecs.",q);
f=1;
R=1.35*(q^2/f)^(1/3);
R=round(R*100)/100;
mprintf("\nregime scour depth=%f m.",R);
V=q/R;                   //regime velocity
vh=V^2/(2*9.81);        //velocity head
l_down=hfl+vh;
l_up=l_down+flux;
hfl_up=l_up-vh;
hfl_down=hfl-0.5;
hfl_down=round(hfl_down*100)/100;
mprintf("\nactual d/s H.F.L allowing 0.5 m for retrogation=%f m.",hfl_down);
K=(q/1.7)^(2/3);
cl=l_up-K;               //crest level
cl=round(cl*100)/100;
mprintf("\ncrest level=%f m.",cl);
pl=fsl+0.5;              //pond level
s=hfl_down-cl;                //heigth of shutter
mprintf("\nheigth of shutter=%f m.",s);
rl_up_pile=hfl_up-1.5*R;    //R.L of bottom u/s pile
d_up_cut=hw-276;           //depth of upstream cut-off
mprintf("\ndepth of upstream cut-off=%f m.",d_up_cut);
mprintf("\n provide concrete cut off 2 m depth.");
rl_bot_ds=hfl_down-2*R;
Hs=hfl_down-hw;            //seepage head
Hc=cl-hw;                  //heigth of crest
mprintf("\nR.L of gates crest=%f m.",Hs);
mprintf("\nHeigth of crest=%f m.",Hc);

//design of weir wall
d=hfl_up-cl;
a=d/(rho)^0.5;
a=3*d/(2*rho);            //from sliding consideration
a=s+1;                    //from practical consieration
a=a+1;
mprintf("\n\ndesign of weir wall:")
mprintf("\nprovide top width of %i m.",a);
Mo=9.81*Hs^3/6;                //overtirning moment
//equating the moment of resistance to overturning moment and putting the values we get
y=poly([-1.084,0.020,0.039],'x','c');
b=roots(y);
//we get b= - 5.5347261 and 5.0219056
//taking
b=5;
//when weir is submerged
C=0.58;
d=(q^2/((2*C/3)^2*2*9.81))^(1/3);
Mo=9.81*d*Hc^2/2;
//from equation of moment of resistence we get
y=poly([-77.55,3,1],'x','c');
b=roots(y);
//we get b= - 10.433085 and 7.4330846
//taking
b=8;
mprintf("\nbottom width=%i m.",b);

//design of impervious and pervious aprons
C=12;
L=C*Hs;
mprintf("\n\ndesign of impervious and pervious aprons:");
mprintf("\ntotal creep length=%i m.",L);
l1=2.21*C*(Hs/13)^0.5;
l1_=l1+1;
mprintf("\nlength of downstream impervious apron=%i m.",l1_);
d1=hw-276;
d2=hw-271;
l2=L-l1-(b+2*d1+2*d2);
mprintf("\nlength of upstream impervious apron=%i m.",l2);
l3=18*C*(Hs*q/975)^0.5;
mprintf("\ntotal length of d/s apron=%i m.",l3);                //calculation is wrong in book
l=l3-l1;
le=l/2;
le=round(le*100)/100;
mprintf('\nprovide filter of length %f m. and launching apron of length %f m.',le,le);
t=d2*10^0.5/le;
mprintf("\nthickness of launching apron in horizontal position=%f m.",t);
mprintf("\nprovide launching apron of thickness 1.5 m.");
T=2*d1;
V=d1*10^0.5;
ta=V/T;
ta=round(ta*10)/10;
mprintf("\nthickness of apron in horizontal position=%f m.",ta);
Hr=Hs-Hs*(4+33+8)/L;
t=4*Hr/(3*(rho-1));
t=round(t*10)/10;
mprintf('\nprovide thickness of %f m from d/s of weir wall to point 6 m from it.',t);
Hr=Hs-Hs*(4+33+8+6)/L;
t=4*Hr/(3*(rho-1));
t=round(t*10)/10;
mprintf("\nprovide thickness of %f m from 6 m to 12 m from d/s end of weir wall.",t);
Hr=Hs-Hs*(4+33+8+12)/L;
t=4*Hr/(3*(rho-1));
t=round(t*10)/10;
mprintf("\nprovide thickness of %f m for rest of length of weir floor.",t);

//check by khosla's theory
b=33+8+19;            //total horizontal length of impervious floor
d=7;                  //depth of downstream pile
alpha=b/d;
n=0.14;                //n=1/%pi*(lambda)^0.5;
Ge=Hs*n/d;
mprintf("\n\ncheck by Khosla theory:");
mprintf("\nexit gradient=%f. < 1/6\n hence safe",Ge);
alpha_=d/b;
fic1=0.83;fid1=0.88;
corec_c1=(fid1-fic1)*100/2;
bdash=b;
d=2;D=7;
C1=19*(D/bdash)^0.5*(d+D)/b;
fic1=fic1*100+corec_c1+C1;
Pc=Hs*fic1/100;                        //pressure head at C
alpha_=d/b;
fie2=0.31;fid2=0.21;
corec_e1=(fie2-fid2)*1.7*100/7;
bdash=b;
d=7;D=2;
C1=19*(D/bdash)^0.5*(d+D)/b;
fie2=fie2*100-corec_e1-C1;             //in book 3.53 value is wrong
Pe=Hs*fie2/100;                         //pressue head at E
//assuming linear variation of pressure for intermediate points
Pa=Pc-(Pc-Pe)*(33+8)/b;
t=Pa/1.24;
Pa=round(Pa*100)/100;
t=round(t*100)/100;
mprintf("\npressure at d/s of weir wall=%f m.",Pa);
mprintf("\nthickness at d/s of weir wall=%f m. < thickness by Bligh theory;\nhence safe.",t);
Pb=Pc-(Pc-Pe)*(33+8+6)/b;
t=Pb/1.24;
Pa=round(Pa*100)/100;
t=round(t*100)/100;
mprintf("\npressure at 6 m from d/s of weir wall=%f m.",Pb);
mprintf("\nthickness at 6m from d/s of weir wall=%f m. < thickness by Bligh theory;\nhence safe.",t);
Pc=Pc-(Pc-Pe)*(33+8+12)/b;
t=Pc/1.24;
Pa=round(Pa*100)/100;
t=round(t*100)/100;
mprintf("\npressure at 12 m from d/s of weir wall=%f m.",Pc);
mprintf("\nthickness at 12m from d/s of weir wall=%f m. > thickness by Bligh theory;\nhence unsafe.",t);
mprintf("\nhence increase th ethickness to 1.9 m for a length of 7 m of impervious floor.");
