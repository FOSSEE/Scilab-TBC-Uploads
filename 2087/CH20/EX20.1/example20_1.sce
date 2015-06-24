

//example 20.1
//design  a guide bank required for a bridge in a river
//calculate volume of stone required per m length of guide bank
clc;funcprot(0);
//given
Q=50000;         //discharge
f=1.1;           //silt factor
bl=130;          //bed level of river
hfl=140;         //high flood level
L=4.75*(Q)^0.5;
L=L+212;          //providing 20 percent more length
L_up=5*L/4;       //upstream length of guide bund
L_down=L/4;       //downstream length of guide bund
r_up=0.45*L;      //radius of upstream curved head
mprintf("upstream length of guide bund=%i m.",L_up);
mprintf("\ndownstream length of guide bund=%i m.",L_down);
mprintf("\nupstream radius of curved head=%i m.;it can be carved at 145 degrees.",r_up);
mprintf("\ndownstream radius of curved head=287m.;it can be carved at 60 degrees.");

fb=1.5;       //free board
ltop=fb+hfl;  //level of top of guide bund
mprintf("\n\nlevel of top of guide bund=%f m.",ltop);
mprintf("\nadopt top level=142 m.");
ltop=142;
Hr=ltop-bl;
mprintf("\nkeep top width=4 m. and side slope as 2:1.");
T=0.06*(Q)^(1/3);         //thickness of stone pitching
T=round(T*100)/100;
mprintf("\n\nThickness of stone pitching=%f m.",T);
R=0.47*(Q/f)^(1/3);      //depth of scour
Rmax=1.25*R;            //maximum scour
rl=hfl-Rmax;            //R.L at maximum anticipated cover
D=bl-rl;                //depth of maximum scour
Lapron=1.5*D;
R=round(R*100)/100;
Lapron=round(Lapron*100)/100;
mprintf("\ndepth of scour=%f m.",R);
mprintf("\n\nfor straigtht reach of guide band:");
mprintf("\nlength of apron=%f m.",Lapron);
Rmax=1.5*R;
rl=hfl-Rmax;
D1=bl-rl;
Lapron=1.5*D1;
R=round(R*100)/100;
mprintf("\n\nfor curvilinear transition portion of guide band:");
mprintf("\nlength of apron=%f m.",Lapron);
T1=1.9*T;
T1=round(T1*10)/10;
mprintf("\nthickness of apron=%f m.",T1);
mprintf("\n\nvolume of stones:");
ss=5^0.5*(141-130)*T;
as=5^0.5*D*1.25*T;
ss=round(ss*100)/100;
as=round(as*100)/100;
mprintf("\nat shank:");
mprintf("\non slope=%f cubic metre/m.",ss);
mprintf("\non apron with a slope 2:1 =%f cubic metre/m.",as);

va=5^0.5*D1*1.25*T;
vs=ss;
vs=round(vs*100)/100;
va=round(va*100)/100;
mprintf("\nU/S andD/S curved portion:");
mprintf("\non slope=%f cubic metre/m.",vs);
mprintf("\non apron =%f cubic metre/m.",va);

ta=va/(1.5*D1);
ta=round(ta*10)/10;
mprintf("\n\nthickness of launching apron=%f m.",ta);
