

//example 12.12
//calculate
//number of gates required for the barrage
//head regulator if each gate has 10 m clear span(neglect end contractions and approach velocity)
//length and R.L of basin floor if silting basin is provided downstream of barrage
clc;funcprot(0);
//given
Lmax=212;           //maximum reservior level
Lp=211;             //pond level
hfl=210;            //downstream high flood level in the river
Qmax=3500;          //maximum design flood discharge
Lcrest=207;         //crest level of the barrage
Lcrest_r=208;       //crest level of head regulator
Cd=2.1;             //coefficient of discharge for barrage
Cd_r=1.5;           //coefficient of discharge for head regulator
rbl=205;            //river bed level
Q=500;              //design discharge of main canal

//design of water way for barrage during flood
H=Lmax-Lcrest;
L=Qmax/(Cd*H^1.5);
//which gives L=149.07.
//provide 15 bays of 10m clear span
mprintf("nunmber of gates for the barrage=15.");

//design of waterway for canal head regulator
H=Lp-Lcrest_r;
L1=Q/(Cd_r*H^1.5);
//which gives L=64.2
//hence provide 7 bays of 10 m each
mprintf("\n\nnunmber of gates for the head regulator=7.");

//design of stilling basin
Hl=Lmax-hfl;
q=Qmax/L;
yc=(q^2/9.81)^(1/3);
Z=Hl/yc;
//since Z<1
Y=1+0.93556*Z^0.368;
y2=Y*yc;
Lc=5*y2;
Lc=round(Lc*10)/10;
mprintf("\n\nLength of cistern=%f m.",Lc);
Ef2=yc*(Y+1/(2*Y^2));
j=hfl-Ef2;
j=round(j*10)/10;
mprintf("\nR.L of cistern=%f m.",j);


