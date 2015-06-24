printf("\texample 14.6\n");
printf("\tapproximate values are mentioned in the book \n");
st1=274; //°F
vt6=115; //°F
odT=st1-vt6; //°F
printf("\tTotal temperature difference = %.0f °F\n",odT); //corresponding to 35 psig
eb1=77;//°F, From fig.14.38
eb2=26;//°F, From fig.14.38
etd=odT-(eb1+eb2);//°F
printf("\tThe effective temperature difference is %.0f °F\n",etd);
printf("\n\t\t\tCAUSTIC EVAPORATOR MATERIAL BALANCE\n");
//Basis: 1 ton/hr NaOH
printf("\tCell liquour at 120°F \t\tWash at 80°F\n");
printf("\t---------------------------------------------\n");
l1=2000;//Lb
l2=3800;//Lb
l3=17050;//Lb
lq=l1+l2+l3;//Lb
w1=340;//Lb
w2=1020;//Lb
w=w1+w2;//Lb
printf("\t8.75 prcnt NaOH = %.0f\n\t16.6 prcnt NaCl = %.0f\t\t25 prcnt NaCl = %.0f\n",l1,l2,w1);
printf("\t74.65 prcnt H20 = %.0f\t\t75 prcnt H20 = %.0f\n",l3,w2);
printf("\tTotal cell liquor = %.0f\tTotoal wash = %.0f\n",lq,w);
printf("\n\t-------------------------------------------------------------------------\n");
printf("\t\t\t\tNaOH\t\tNaCl\t\tH20,Lb\tTotal,Lb\n\t\t\t\tprcnt\tLb\tprcnt\tLb\n");
printf("\t-------------------------------------------------------------------------\n");
printf("\tOverall operation:\n\t  Cell liquor.......... 8.75\t"+string(l1)+"\t16.60\t"+string(l2)+"\t"+string(l3)+"\t"+string(lq)+"\n");
printf("\t  Wash................. ....\t....\t25.00\t"+string(w1)+"\t"+string(w2)+"\t"+string(w)+"\n");
wl1=l2+w1;//Lb
wl2=l3+w2;//Lb
wlt=lq+w;
printf("\t  Total in............. ....\t"+string(l1)+"\t....\t"+string(wl1)+"\t"+string(wl2)+"\t"+string(wlt)+"\n");
prn=110;//Lb
prh=1890;//Lb
prt=4000;//Lb
printf("\t  Product.............. 50.00\t"+string(l1)+"\t2.75\t"+string(prn)+"\t"+string(prh)+"\t"+string(prt)+"\n");
r1=wl1-prn;//Lb
r2=wl2-prh;//Lb
r3=wlt-prt;//Lb
gain=3200;//gpm
printf("\t  Removed.............. ....\t....\t....\t%.0f\t%.0f\t%.0f\n",r1,r2,r3);
//Rest of the table is calculated similarily
printf("\n\t\t\t\t\tCAUSTIC EVAPORATOR SUMMARY\n");
printf("\t------------------------------------------------------------------------------------\n");
printf("\tItem\t\t\t\t\tEffects\nt\t\t\t\t\t--------------------\t\tFlash Tank\n\t\t\t\t\t\I\t\tII\n");
printf("\t------------------------------------------------------------------------------------\n");
printf("\t1.Steam pressure, psi/in.Hg\t30\n\t2.Steam temperature,°F\t\t274\t\t169\n\t3.delT,°F\t\t\t28\t\t28\n\t4.Liquor temperature, °F\t246\t\t141\t\t192\n\t5.BPR, °F\t\t\t77\t\t26\t\t77\n\t6.Vapor temperature, °F\t\t169\t\t115\t\t115\n\t7.Lambda, Btu/lb\t\t997\t\t1027\t\t1027\n\t8.Feed, lb/hr\t\t\t22788\t\t50602\t\t13367\n\t9.Product, lb/hr\t\t13367\t\t40352\t\t12813\n\t10.Evaporation,lb/hr\t\t9421\t\t10250\t\t554\n\t11.Heat flow, Btu/hr\t\t11890000\t11020000\n\t12.UD,Btu/((hr)*(ft^2)*(°F))\t700\n\t13.A,ft^2\t\t\t683\t\t683\n\t14.Tubes, OD, in. and BWG\t1,16\t\t1,16\n\t15.Tube length, ft\t\t7\t\t7\n\t16.No. tubes\t\t\t432\t\t432\n\t17.Circulating pump. gpm\t3200 at 20 ft\t3200 at 20ft\t167 at 45 ft\n\t18.Apparent efficiency, prcnt\t54\t\t64\n\t18.BHP\t\t\t\t38\t\t35\t\t8.2\n\t20.Motor,hp\t\t\t40\t\t40\t\t10.0\n");
printf("\t------------------------------------------------------------------------------------\n");
V=8;
s=1.5;
G=V*s*62.5*3600;//lb/((hr)*(ft^2))
printf("\tG = V(s*62.5*3600) = %.1e lb/((hr)*(ft^2))\n",G);
UD=700;//Btu/((hr)*(ft^2)*(°F))
//Combining with a steam film coefficient of approximately 1500
printf("\tUC or UD = %.0f Btu/((hr)*(ft^2)*(°F))\n",UD);
printf("\n\t-------------------------------------------------------------------------------------");
printf("\n\ttx,°F\tw,lb/hr\t\tdelT\tUC\tA,ft^2\tat,flow area\tGcalc\t\tUcalc\n\t\t\t\t\t\t\tper pass, ft^2\n");
printf("\t-------------------------------------------------------------------------------------\n");
printf("\t251\t2970000\t\t25.4\t700\t670\t0.87\t\t3420000\n\t252\t2480000\t\t25.0\t700\t680\t0.88\t\t2820000\n\t252.5\t2290000\t\t24.7\t700\t685\t0.89\t\t2570000\t\t700\n\t253\t2120000\t\t24.5\t700\t695\t0.90\t\t2520000\n");
printf("\tThee gain per minute is %.0f gpm\n",gain);
printf("\n\t\t\t\tCAUSTIC EVAPORATION HEAT BALANCE\n");
printf("\t\t\t\t(Basis = 1ton/hr NaOH)\n");
printf("\t-------------------------------------------------------------------------------------\n");
printf("\t\tEFFECT\t\t\tBtu/hr\t\tEvaopration, lb/hr\n");
hi=10500*930*0.974;//Btu/hr
hl=18230*(246-150)*0.83;//Btu/hr
rh=hi-hl;//Btu/hr
hc=300000;//Btu/hr
hv=rh-hc;//Btu/hr
evv=hv/997;//lb/hr
printf("\t1.a.Heat in steam\t\t%.1e\n\t  b.Heating liquor\t\t%.2e\n\t  c.Resultant heat\t\t%.2ef\n\t  d.Heat of concentrate\t\t%.0e\n\t  e.Heat of vapors\t\t%.2e\t%.0f\n",hi,hl,rh,hc,hv,evv);
s1=1.35;
G1=V*s1*62.5*3600;//lb/((hr)*(ft^2))
printf("\n\tG = V(s*62.5*3600) = %.2e lb/((hr)*(ft^2))\n",G1);
UD1=700;//Btu/((hr)*(ft^2)*(°F))
//Using thermal characteristics for this solution
printf("\tUD = %.0f Btu/((hr)*(ft^2)*(°F))\n",UD1);
//As for effect I:
printf("\n\t-------------------------------------------------------------------------------------");
printf("\n\ttx,°F\tw,lb/hr\t\tdelT\tUC\tA,ft^2\tat,flow area\tGcalc\t\tUcalc\n\t\t\t\t\t\t\tper pass, ft^2\n");
printf("\t-------------------------------------------------------------------------------------\n");
printf("\t146\t2400000\t\t25.4\t700\t620\t0.80\t\t2790000\t\t700\n\t146.5\t2160000\t\t25.2\t700\t683\t0.89\t\t2430000\n");
//end
