printf("\texample 14.4 \n");
printf("\tapproximate values are mentioned in the book \n");
//Assumed that 37500 lb/hr of 15 psig vapor is bled from the first effect for use in thevaccum pans
printf("\n\tAVERAGE EVAPORATION PER SQUARE FOOT HEATING SURFACE FOR SUGAR EVAPORATORS\n");
printf("\tEffects\t\tWater evaporated(lb/(hr)*(ft^2))\n");
printf("\t1\t\t14-16\n\t2\t\t6-8\n\t3\t\t5-6\n\t4\t\t4-5\n\t5\t\t3-4\n");
printf("\n\tEVAPORATOR SUMMARY\n");
printf("\t------------------------------------------------------------------------------------------------------------------------------\n");
printf("\tItem\t\t\t\t\t\t\t\t\tEffects\nt\t\t\t\t\t----------------------------------------------------------------------------------------------\n\t\t\t\t\t1A\t\t1B\t\t2\t\t3\t\t4\t\t5\n");
printf("\t------------------------------------------------------------------------------------------------------------------------------\n");
printf("\t1.Steam  flow, lb/hr\t\t42600\t\t38000\n\t2.Steam pressure, psi/in.Hg\t30\t\t30\t\t15\t\t5\t\t4\t\t14.5\n");
printf("\t3.Steam temp,°F\t\t\t274\t\t274\t\t250\t\t227\t\t205\t\t181\n");
printf("\t4.delT,°F\t\t\t23\t\t23\t\t21\t\t20\t\t20\t\t27\n\t5.Liquor temp, °F\t\t251\t\t251\t\t229\t\t207\t\t185\t\t164\n\t6.BPR, °F\t\t\t1\t\t1\t\t2\t\t2\t\t4\t\t7\n\t7.Vapor temp, °F\t\t250\t\t250\t\t227\t\t205\t\t181\t\t147\n\t8.Vapor pressure, pis/in.Hg\t15\t\t15\t\t5\t\t4\t\t14.5\t\t23\n\t9.Lambda, Btu/lb\t\t946\t\t946\t\t960\t\t975\t\t990\t\t1010\n\t10.Liquor in, lb/hr\t\t229000\t\t190200\t\t154000\t\t117100\t\t87800\t\t64000\n\t11.Liqour out, lb/hr\t\t190200\t\t154000\t\t117100\t\t87800\t\t64000\t\t49600\n\t12.Evaporation,lb/hr\t\t38800\t\t36200\t\t36900\t\t29300\t\t23800\t\t14400\n\t13.°Brix(out)\t\t\t15.7\t\t19.4\t\t25.5\t\t34.4\t\t46.5\t\t50.0\n\t14.A,ft^2\t\t\t3500\t\t3500\t\t5000\t\t5000\t\t5000\t\t3500\n\t15.UD,Btu/(hr)*(ft^2)*(°F)\t478\t\t425\t\t310\t\t264\t\t219\t\t138\n\t16.UD delT,Btu/(hr)*(ft^2)\t11000\t\t9780\t\t6520\t\t5270\t\t4390\t\t3740\n");//BPR values from fig 14.34a
//Saturate vapor pressure above the liquour determined from Table 7
//Saturated steam pressure in the following effect determined from Table 7

t1 = 274; //°F
t2 = 147; //°F
t = t1-t2; //°F
printf("\tTotal temperature difference in the evaporator system = %.0f °F\n",t);
bpr1 = 1; //°F
bpr2 = 2; //°F
bpr3 = 2; //°F
bpr4 = 4; //°F
bpr5 = 7; //°F
bpr = bpr1 + bpr2 + bpr3 + bpr4 + bpr5; //°F
printf("\tThe sum of all the BPR(from effect 1B to the fifth effect inclusive) = %.0f °F\n",bpr);
tf = t-bpr; //°F
printf("\tTotal EFFECTIVE  temperature difference = %.0f °F\n",tf);
lbh = 229000; //lb/hr
tp1=212; //°F
tp2=184; //°F
tp3=144; //°F
tp4=82; //°F
tj1=243; //°F
tj2=220; //°F
tj3=200; //°F
Ud1=231;
Ud2=243;
Ud3=230;
Ud4=214;
Ud5=217;
printf("\n\t\t\t\tSUGAR-JUICE HEATERS\n");
printf("\tRaw-juice heaters\t\t\t\tClear=juice heaters\n\t-----------------------------------------------------------------------------------------\n");
rj1=lbh*(tp1-tp2)*(0.91); //Btu/hr
printf("\t1.%.0f(%.0f-%.0f)(0.91) = %.2e Btu/hr",lbh,tp1,tp2,rj1);
rj2=lbh*(tj1-tj2)*(0.91); //Btu/hr
printf("\t1.%.0f(%.0f-%.0f)(0.91) = %.1e Btu/hr\n",lbh,tj1,tj2,rj2);
printf("\tVapor temp. = 227°F\tdelT=26.6°F\t\tVapor temp. = 250°F\tdelT=15.8°F\n");
printf("\tUD=%.0f\t\t\t\t\t\tUD=%.0f\n",Ud1,Ud2);
A1=rj1/(26.6*Ud1);//ft^2
A2=rj2/(15.8*Ud2);//ft^2
printf("\tSurface,A=%.0f ft^2\t\t\t\tSurface,A=%.0f ft^2\n\n",A1,A2);

rj3=lbh*(tp2-tp3)*(0.90);//Btu/hr
printf("\t2.%.0f(%.0f-%.0f)(0.91) = %.2e Btu/hr",lbh,tp2,tp3,rj3);
rj4=lbh*(tj2-tj3)*(0.90);//Btu/hr
printf("\t2.%.0f(%.0f-%.0f)(0.91) = %.2e Btu/hr\n",lbh,tj2,tj3,rj4);
printf("\tVapor temp. = 205°F\tdelT=37.6°F\t\tVapor temp. = 227°F\tdelT=14.8°F\n");
printf("\tUD=%.0f\t\t\t\t\t\tUD=%.0f\n",Ud3,Ud4);
A3=rj3/(37.6*Ud3);//ft^2
A4=rj4/(14.8*Ud4);//ft^2
printf("\tSurface,A=%.0f ft^2\t\t\t\tSurface,A=%.0f ft^2\n\n",A3,A4);

rj5=lbh*(tp3-tp4)*(0.90);//Btu/hr
printf("\t2.%.0f(%.0f-%.0f)(0.91) = %.2e Btu/hr",lbh,tp3,tp4,rj4);
printf("\t(Use 2 heaters at 1300 ft^2 each plus 1\n\t\t\t\t\t\t\theater at 1300 ft^2 as spare)\n");
A5=rj5/(62.2*Ud5);//ft^2
printf("\tVapor temp. = 181°F\tdelT=62.2°F\n\tSurface,A=%.0f\n",A5);
printf("\t(Use 3 heaters at 100 ft^2\n\teach plus 1 heater as spare)\n\n");

v1=42600;//lb/hr
tt1=251;//°F
printf("\t\t\t\tHEAT BALANCE\n");
printf("\tEffect\t\t\tBtu/hr\t\tEvaporation,l/hr\n");
printf("\t----------------------------------------------------\n");
hia=v1*929*0.97;//Btu/hr
printf("\t1A.Heat in steam........%.2e\n",hia);
hla=lbh*(tt1-tj1)*0.91;//Btu/hr
hh=hia-hla;//Btu/hr
lb1=946;//Btu/lb
dif=hh/lb1;//lb/hr
printf("\t   Heating liquor.......%.2e\n\t\t\t\t%.3e\t%.0f\n",hla,hh,dif);
ltob=lbh-dif;//lb/hr
printf("\t   Liqour to 1B\n\t   = %.0f lb/hr\n",ltob);
hia1=dif*929*0.97;//Btu/hr
printf("\t1B.Heat in steam........%.2e\n",hia1);
hla1=ltob*(tt1-tt1)*0.91;//Btu/hr
hh1=hia1;//Btu/hr
dif1=hh1/lb1;//lb/hr
printf("\t   Heating liquor........%.0f\n\t\t\t\t%.3e\t%.0f\n",hla1,hh1,dif1);
dif2=ltob-dif1;//lb/hr
printf("\t   Liqour to 2d \n\t   effect=%.0f lb/hr\n",dif2);
//Similarily the values in the table are calculated

printf("\t\t\t\t\t\t\t\tLb/hr\n");
aa=179400;//lb/hr
bb=145500;//lb/hr
cc=19700;//lb/hr
dd=30600;//lb/hr
ee=17900;//lb/hr
ff=13100;//lb/hr
tto=aa+bb+cc+dd+ee+ff;//lb/hr
printf("\t(a) Actual evaporation..................................%.0f\n",aa);
printf("\t(b) Equivalent evaporation from vapors of \n\t    1st effect used for vaccum pans.....................%.0f\n",bb);
printf("\t(c) Equivalent evaporation from 1st effect \n\t    vapors used for clarified-juice heaters.............%.0f\n",cc);
printf("\t(d) Equivalent evaporation from 2d effect \n\t    vapors used for clarified-and raw-juice heaters.....%.0f\n",dd);
printf("\t(e) Equivalent evaporation from 3d effect \n\t    vapors used for raw-juice heaters...................%.0f\n",ee)
printf("\t(f) Equivalent evaporation from 4th effect \n\t    vapors used for raw-juice heaters...................%.0f\n",ff);
printf("\t                                                        -----\n")
printf("\t     Extrapolated evaporation...........................%.0f\n",tto);
esq=tto/5;//lb/hr
printf("\t\tEstimated steam quantity = %.0f lb/hr\n",esq);
aesq=80600;//lb/hr
err = esq-aesq;//lb/hr
printf("\t\tActual steam required from final heat balance = %.0f lb/hr\n",aesq);
printf("\t\t\t\t\t\t\tError = %.0f lb/hr\n",err);
ta=15;
Q=14575000; //Btu/hr Total hourly evaporation
Gpm=Q/(500*(t2-tp4-ta));//From equation 14.4
printf("\tGallons per minute of Water required = %.0f gpm",Gpm);
