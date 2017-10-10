printf("\t example 13.6a \n");
printf("\t approximate values are mentioned in the book \n");

ds=[0 10 20 30 40 50 60 70 80 90 100];
tmp=[90 145 180 208 234 260 286 312 338 367 400];
clf();
subplot(3,2,1);
plot2d(ds,tmp,style=2,rect=[0,80,100,400]);
xtitle("Plot of ASTM curve",boxed=1);
xlabel("Per cent distilled off");
ylabel("Temperature °F");

//From the plotted ASTM curve and reference line
s = (312-145)/60; // (70% - 10%)/60%
printf("\tSlope of ASTm = %.2f °F\n",s);
ap = (180+260+338)/3; // (20% +50% +80%)/3
printf("\tAverage 50prcnt point = %.1f °F\n",ap);

fc = 38; //°F, from Fig.13.8
printf("\t50prcnt point ASTM = 50prcnt point flash curve = %.0f °F\n",fc);
fc1 = ap - fc; //°F, fixing first point on EFC
printf("\t50prcnt on EFC = %.0f °F\n",fc1);

s1 = 1.65; // (°F/%) from fig 13.10, upper curve
ten = 221 - 40*s1; //
printf("\t10prcnt on EFC = 50prcnt - 40prcnt = %.0f °F\n",ten);
sty = 221 + 20*s1; //
printf("\t70prcnt on EFC = 50prcnt + 20prcnt %.0f °F\n",sty);

//Draw this line as a reference through the 50% point. Calculate the flash curve for different percentages off

//0% off
printf("\n\t0 prcnt off:\n");
dela = 90 - 117; // Step (8)
printf("\t\tDelT ASTM = %.0f °F\n",dela); 
delE = dela * 0.50; // Step (9)
printf("\t\tDelT EFC = %.1f °F\n",delE);
FE = 139 - delE; // Step (10)
printf("\t\t°F EFC = %.1f\n",FE);
//end
ov=13300; //lb/hr
ng=90;//lb/hr
mng=50;// mol. wt
st=370;//lb/hr
avG=50;//°F API
//For 80%
ouc=ov*0.80;//lb/hr
printf("\toil uncondensed = %.0f lb/hr\n",ouc);
avB=269;//°F,from Fig. 13.13
printf("\tAverage boiling point from the EFC at 1 atm = %.0f°F\n",avB);
avB1=avB+17;//°F,from Fig. 13.13
printf("\tAverage boiling point from the EFC at 19.7 psia = %.0f°F\n",avB1);
mwt=113;//mol. wt
mtoc=ouc/mwt;
printf("\tThe moles of oil still to be condensed = %.1f\n",mtoc);
mg1=ng/mng;
ms1=st/18;
tm=mg1+ms1+mtoc;
printf("\t\tMols gas = %.2f\n\t\tMols steam = %.1f\n",mg1,ms1);
printf("\t\t\t    -----\n\t\tMols total = %.1f\n",tm);
tp=19.7;//psia
poil=(mtoc/tm)*tp;//psia
printf("\tPartial pressure of oil = %.1f psia\n",poil);
pgas=(mg1/tm)*tp;//psia
printf("\tPartial pressure of NC gas = %.3f psia\n",pgas);
tm(1)=95;//°F
tm(2)=127;//°F
tm(3)=163;//°F
tm(4)=205;//°F
tm(5)=240;//°F
pp(1)=6.73;
pp(2)=9.40;
pp(3)=12.25;
pp(4)=14.64;
pp(5)=15.65;
psat(1)=0.815;//From steam table
psat(2)=2.050;//From steam table
psat(3)=5.09;//From steam table
psat(4)=12.77;//From steam table
psat(5)=24.97;//From steam table
printf("\n\t\tCALCULATION OF DEW POINT OF THE STEAM\n");
printf("\tT,°F\t[pt  -  (poil+pNC)]  =  psteam\tpsat(steam tables)\n");
i=1;
while(i<6)
    ps=tp-pp(i);
    printf("\t"+string(tm(i))+"\t%.1f\t %.2f\t\t%.2f\t%.3f\n",tp,pp(i),ps,psat(i));
    i=i+1;
end
subplot(3,2,2);
plot2d(psat,tm,style=3,rect=[0,25,90,250]);
xtitle("Computed pressure of steam",boxed=1);
xlabel("Pressure of steam, psi");
ylabel("Temperature °F");

ds=6.417;//psia,at 173°F,
printf("\tAt 173°F, the dew point of steam, psat = %.3f psia\n",ds);
pd1=tp-ds;//psia
printf("\tpoil + pNC = %.2f psia\n",pd1);
x=((tp*ms1)/ds)-(ms1+mg1);// mols oil
printf("\tOil = %.2f mols oil\n",x);
mw=85;//From fig. 13.14
printf("\tThe molecular weight of the vapors is %.0f\n",mw);
lv=x*mw;//lb
printf("\tLb/hr vapor = %.0f\n",lv);
prc=((ov-lv)*100)/ov;//%
printf("\tpercent Condensed = %.0f\n",prc);
printf("\n\t\t\tOIL CONDENSING CURVE\n");
printf("\tprcnt\tCondensables\t\tAv BP on EFC\t\t50° API\t\tMol oil\t\tMol NC gas\tMol steam\tMol total\tTotal pressure\tPartial pressure\tPartial pressure\tCond temp,°F\n\t\tlb.hr\t\t14.7 psia °F\t19.7 psia,°F\tmol.wt\t\t\t\t\t\t\t\t\t\tpsia\t\toil,psia\t\tNC gas, psia\n");
mo(1)=107.5;
mo(2)=94.3;
mo(3)=77.7;
mo(4)=57.4;
mo(5)=31.8;
mo(6)=17.1;
mo(7)=8.9;
i=1;
while(i<8)
    mt(i)=mo(i)+mg1+ms1;
    ppo(i)=(mo(i)/mt(i))*tp;
    ppg(i)=(mg1/mt(i))*tp;
    i=i+1;
end
printf("\t---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n");
printf("\t100\t13330\t\t300\t\t317\t\t124\t\t%.1f\t\t1.8\t\t20.6\t\t%.1f\t\t19.7\t\t%.1f\t\t\t%.3f\t\t\t305\n",mo(1),mt(1),ppo(1),ppg(1));
printf("\t80\t10664\t\t269\t\t286\t\t113\t\t%.1f\t\t1.8\t\t20.6\t\t%.1f\t\t19.7\t\t%.1f\t\t\t%.3f\t\t\t277\n",mo(2),mt(2),ppo(2),ppg(2));
printf("\t60\t7998\t\t239\t\t256\t\t103\t\t%.1f\t\t1.8\t\t20.6\t\t%.1f\t\t19.7\t\t%.1f\t\t\t%.3f\t\t\t240\n",mo(3),mt(3),ppo(3),ppg(3));
printf("\t40\t5332\t\t207\t\t224\t\t93\t\t%.1f\t\t1.8\t\t20.6\t\t%.1f\t\t19.7\t\t%.1f\t\t\t%.3f\t\t\t205\n",mo(4),mt(4),ppo(4),ppg(4));
printf("\t20\t2666\t\t178\t\t195\t\t84\t\t%.1f\t\t1.8\t\t20.6\t\t%.1f\t\t19.7\t\t%.1f\t\t\t%.3f\t\t\t163\n",mo(5),mt(5),ppo(5),ppg(5));
printf("\t10\t1333\t\t155\t\t172\t\t78\t\t%.1f\t\t1.8\t\t20.6\t\t%.1f\t\t19.7\t\t%.1f\t\t\t%.3f\t\t\t127\n",mo(6),mt(6),ppo(6),ppg(6));
printf("\t5\t667\t\t141\t\t158\t\t75\t\t%.1f\t\t1.8\t\t20.6\t\t%.1f\t\t19.7\t\t%.1f\t\t\t%.3f\t\t\t95\n",mo(7),mt(7),ppo(7),ppg(7));

//Trail 1:
m=78;//50° API mol. wt. for condesables 1333
vap=(ov*0.10)/78;//Mol/hr
printf("\n\t\t\t\tMol/hr\n\tOil vapor\t\t%.1f\n\tNC gas\t\t\t%.1f\n\tSteam\t\t\tX\n\tTotal\t\t\t18.9+X\n",vap,mg1);
vap1=vap+mg1;//Mol/hr
psteam=5.09;//psia, For 163°F
x1=(psteam*vap1)/(tp-psteam);//mols steam
printf("\tX = %.2f mols steam\n",x1);
tv=vap1+x1;
printf("\n\t\t\tMol/hr\tmf\tmf*pt = p-partial\n");
mf1=vap/(tv);
ppar1=mf1*tp;
printf("\tOil vapor\t%.1f\t%.3f\t%.2f\n",vap,mf1,ppar1);
mf2=mg1/tv;
ppar2=mf2*tp;
printf("\tNC gas\t\t%.1f\t%.3f\t%.2f\n",mg1,mf2,ppar2);
mf3=x1/tv;
ppar3=mf3*tp;
printf("\tSteam\t\t%.2f\t%.3f\t%.2f\n",x1,mf3,ppar3);
tot1=vap+mg1+x1;
tot2=mf1+mf2+mf3;
tot3=ppar1+ppar2+ppar3;
printf("\tTotal\t\t%.2f\t%.3f\t%.2f\n",tot1,tot2,tot3);
//Error was found. So trail 2 is done in a similar way
printf("\n\tSimilarly,\n\tT,°F\tOil cond, prcnt\tOil cond, lb\tSteam cond,lb\n");
printf("\t173\t74\t\t9863\t\t0\n\t163\t85\t\t11350\t\t204\n\t127\t97.5\t\t13000\t\t357\n\t95\t100\t\t13330\t\t370\n");
//Condensing curve
printf("\n\t\t\tOil\t\t\t\tSteam\n\t-----------------------------------------------------------------\n\tTc,°F\tHv,vapor\tHl,liquid\tHg or Hv,\tHl,liquid\n\t\t\t\t\t\tgas or vapor\n");
printf("\t-----------------------------------------------------------------\n")
printf("\t305\t368\t\t242\t\t1197.0\t\tSuperheated\n\t277\t359\t\t225\t\t1184.1\t\tSuperheated\n\t240\t337\t\t204\t\t1167.0\t\tSuperheated\n\t205\t322\t\t185\t\t1150.6\t\tSuperheated\n\t173\t310\t\t168\t\t1135.4\t\t140.9\n");//From fig.11 in Appendix and steam tables
//Heat load
//305°F:
hvv=368;
hvg=1197.0;
olv=ov*hvv;
stm=st*hvg;
ncg=ng*(0.46*273);
thh=olv+stm+ncg;
printf("\n\t\t\t\tH\t\tq\n");
printf("\tOil vapor\t\t%.2e\n\tSteam\t\t\t%.2e\n\tNC gas\t\t\t%.2e\n\t\t\t\t--------\n\t\t\t\t%.4e\t0\n",olv,stm,ncg,thh);
//Similarily at other temperatures
ttp(1)=305;//°F
ttp(2)=277;//°F
ttp(3)=240//°F
ttp(4)=205;//°F
ttp(5)=173;//°F, Dew point of steam
ttp(6)=163;//°F
ttp(7)=127;//°F
ttp(8)=95;//°F

hld(1)=0;//million Btu
hld(2)=0.55;//milllion Btu
hld(3)=1.2;//million Btu
hld(4)=1.75;//million Btu
hld(5)=2.3;//million Btu
hld(6)=2.73;//million Btu
hld(7)=3.3;//million Btu
hld(8)=3.66;//million Btu
subplot(2,2,3);
plot2d(hld,ttp,style=6,rect=[0,60,3.8,320]);
xtitle("Condensation of mixed hydrocarbons with gas and steam",boxed=1);
xlabel("Heat load, million Btu");
ylabel("Temperature °F");
//summary
dp=3042800;//Btu/hr
ttt=3638400;//Btu/hr
i2s=thh-dp;//Btu/hr
printf("\tInlet to steam dew point = %.4eBtu/hr\n",i2s);
so=dp-1735900;//Btu/hr
printf("\tSteam dew point to outlet = %.4e Btu/hr\n",so);
totl=i2s+so;//Btu/hr
printf("\tTotal\t\t\t= %.4e Btu/hr\n",totl);
twa=ttt/(120-85);
printf("\tTotal water = %.2e lb/hr\n",twa);
wt=85+((1306900/ttt)*35);//°F
printf("\tWater temperature at dew point of steam = %.0f°F\n",wt);
//Weighted true temperature difference, delT:
    //Inlet to dew point of steam:
delq=2331500;
delt1=122.2;
UA1=delq/delt1;
printf("\tUA = %.0f\n",UA1);
printf("\n\tDew point of steam to oulet\n");
printf("\tq\tdelq\tTc\ttw\tdelTav\t(delq/delTav) = UA\n");
printf("\t----------------------------------------------------------\n");
q(1)=2331500;
q(2)=2500000;
q(3)=2750000;
q(4)=3000000;
q(5)=3250000;
q(6)=3500000;
q(7)=3638000;
i=1;
while(i<7)
    dq(i)=q(i+1)-q(i);
    i=i+1;
end
dpt(1)=173;
dpt(2)=169;
dpt(3)=161;
dpt(4)=149;
dpt(5)=134;
dpt(6)=112;
dpt(7)=95;
dtw(1)=97.5;
dtw(2)=96;
dtw(3)=93;
dtw(4)=91;
dtw(5)=89;
dtw(6)=86;
dtw(7)=85;
i=1;
tua=0;
while(i<7)
    dpdelt(i)=((dpt(i+1)-dtw(i+1))+(dpt(i)-dtw(i)))/2;
    UA(i)=dq(i)/dpdelt(i);
    tua=tua+UA(i);
    i=i+1;
end
printf("\t2331500\t......\t173\t173\t97.5\n");
i=1;
while(i<7)
    printf("\t"+string(q(i+1))+"\t"+string(dq(i))+"\t"+string(dpt(i+1))+"\t"+string(dtw(i+1))+"\t"+string(dpdelt(i))+"\t%.0f\n",UA(i));//from Fig. 13.16
i=i+1;
end

printf("\t\t\t\t\t\t%.0f\tUA = sigma{delq/delt}\n",tua);
wdt=1306900/tua;//°F
printf("\tWeighted delt = %.1f°F\n",wdt);
owdt=ttt/(tua+UA1);//°F
printf("\tOverall weighted temperature difference = %.1f °F\n",owdt);
printf("\tThe uncorrected LMTD is 60.1°F\n");
//end

