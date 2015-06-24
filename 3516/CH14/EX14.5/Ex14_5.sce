printf("\texample 14.5\n");
printf("\tapproximate values are mentioned in the book \n");
st1=280; //°F
vt6=125; //°F
odT=st1-vt6; //°F
printf("\tOverall temperature difference = %.0f °F\n",odT); //corresponding to 35 psig and 26 in. Hg
bpr(1)=10; //°F
bpr(2)=8; //°F
bpr(3)=7; //°F
bpr(4)=6; //°F
bpr(5)=5; //°F
bpr(6)=5; //°F
i=1;
tbpr=0;
while(i<7)
    tbpr=tbpr+bpr(i);
    i=i+1;
end
printf("\tThe estimated total BPR = %.0f °F\n",tbpr); //from fig. 14.36a
edT=odT-tbpr;
printf("\tEffective temperature difference = %.0f °F\n",edT);
printf("\n\t\t\t\tEVAPORATOR SUMMARY\n\tAll bodies will consist of 300 2 in. OD, 10 BWG tubes 24 long\n");
printf("\t------------------------------------------------------------------------------------------------------------------------------\n");
printf("\tItem\t\t\t\t\t\t\t\t\tEffects\n\t\t\t\t\t----------------------------------------------------------------------------------------------\n\t\t\t\t\t1A\t\t1B\t\t2\t\t3\t\t4\t\t5\n");
printf("\t------------------------------------------------------------------------------------------------------------------------------\n");
printf("\t1.Steam  flow, lb/hr\t\t20000\n\t2.Steam pressure, psi/in.Hg\t35\t\t14.5\t\t4\t\t7\t\t16.5\t\t22\n\t3.Steam temp,°F\t\t\t280\t\t249\t\t224\t\t199\t\t174\t\t151\n\t4.delT,°F\t\t\t21\t\t17\t\t18\t\t19\t\t18\t\t21\n\t5.Liquor temp, °F\t\t259\t\t232\t\t206\t\t180\t\t156\t\t130\n\t6.BPR, °F\t\t\t10\t\t8\t\t7\t\t6\t\t5\t\t5\n\t7.Vapor temp, °F\t\t259\t\t232\t\t206\t\t180\t\t156\t\t130\n\t8.Vapor pressure, pis/in.Hg\t14.5\t\t4\t\t7\t\t6\t\t5\t\t5\n\t9.Lambda, Btu/lb\t\t946\t\t962\t\t978\t\t994\t\t1008\t\t1022\n\t10.Liquor in, lb/hr\t\t73400\t\t88300\t\t101000\t\t113000\t\t72000\t\t72000\n\t11.Liqour out, lb/hr\t\t56200\t\t73400\t\t88300\t\t101100\t\t58300\t\t54700\n\t12.Evaporation,lb/hr\t\t17200\t\t14900\t\t12800\t\t11900\t\t13700\t\t17300\n\t13.Total solids, \t\t38.9\t\t29.8\t\t24.7\t\t21.6\t\t18.7\t\t20.0\n\t14.A,ft^2\t\t\t3250\t\t3250\t\t3250\t\t3250\t\t3250\t\t3250\n\t15.UD,Btu/(hr)*(ft^2)*(°F)\t262\t\t295\t\t252\t\t251\t\t221\t\t221\n\t16.UD delT,Btu/(hr)*(ft^2)\t5510\t\t5000\t\t4530t\t\t4770\t\t3980\t\t4650\n");//BPR values from fig 14.36a
//Specific-heat data are given in Fig. 14.36b
ev(1)=17200; //lb/hr
ev(2)=14900; //lb/hr
ev(3)=12800; //lb/hr
ev(4)=11900; //lb/hr
ev(5)=13700; //lb/hr
ev(6)=17300; //lb/hr
i=1;
tev =0;
while(i<7)
    tev = tev+ev(i);
    i=i+1;
end
printf("\n\tTotal amount of water evaporated = %.0f lb/hr\n",tev);
ttev=tev/6;//lb/hr
printf("\tTheoretical amount of steam for a six-effect evaporator = %.0f lb/hr\n",ttev);
tev2=tev/(6*0.75); //lb/hr . order of 75 percent of theoretical
printf("\tSteam used for trail balance = %.0f lb/hr\n",tev2);
lq=(tev/6);
lq=lq+(lq*0.15);
printf("\tEstimate of the amount of evaporation in the first effect = %.0f lb/hr\n",lq);
lout6=54000;//lb/hr
lq2=lout6+lq+2200;//lb/hr
printf("\tEstimated discharge from second effect = %.0f lb/hr\n",lq2);
printf("\n\t\t\t\tHEAT BALANCE\n");
cw = 17750000/(500*(125-15-60)); //gpm, values from table 14.6
printf("\t\tCooling water at 60 °F = %.0f gpm\n",cw);
printf("\t--------------------------------------------------------\n");
printf("\tEffect\t\t\tBtu/hr\t\tEvaporation,l/hr\n");
printf("\t--------------------------------------------------------\n");
sf=20000;//lb/hr
lqi=73400;//lb/hr
lqi2=88300
lt1=259;//°F
lt2=232;//°F
lt3=206;//°F
ev=17200;//lb/hr
his=sf*924*0.97;//Btu/hr
printf("\t1.a.Heat in steam \t%.2e\n",his);
hl=lqi*(lt1-lt2)*0.82;//Btu/hr
printf("\t  b.Heating liquor \t%.2e\n",hl);
hh=his-hl;
ev1=(hh)/946;//lb/hr
printf("\t  c.Evaporation\t\t\t\t%.0f\n",ev1);
dif=lqi-ev1;
tft=(dif)*(lt1-209)*0.78;
printf("\t  d.To flash tank\t%.1e",tft);
ev2=tft/978;//lb/hr
printf("\t\t%.0f\n",ev2);
printf("\t  e.Flashed vapor=%.0f\n",ev2);
p=dif-ev2;
printf("\t  f.product %.1e\n",p);
printf("\n\t2.a.Heat in 1st vapors\t%.3e\n",hh);
hl2=lqi2*(lt2-lt3)*0.85;
printf("\t  b.Heating liqour\t%.2e\n",hl2);
ev3=(hh-hl2)/962;
printf("\t  c.Evaporation=%.0f",ev3);

printf("\t\t\t%.0f\n",ev3);
lto1=lqi2-ev3;
printf("\t  d.Liquor to 1b=%.0f\n",lto1);
//end
