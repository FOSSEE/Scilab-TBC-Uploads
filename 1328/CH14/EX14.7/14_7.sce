printf("\texample 14.7\n");
printf("\tapproximate values are mentioned in the book \n");
M2=14300;//From fig.14.43 and heat balance above
M1=32200-14300;//From fig.14.43 and heat balance above
printf("\tM1 = %.0f lb\n",M1);
printf("\n\t\t\t\tEVAPORATOR SUMMARY\n");
printf("\t------------------------------------------------------------------------------------------------------------------------------\n");
printf("\tEffects\t\t\t\t\tStraight triple effect\t\t\t\tThermocompression\nt\t\t\t\t\t----------------------------------------------------------------------------------------------\n\t\t\t\t\t1\t\t2\t\t3\t\t1\t\t2\t\t3\n");
printf("\t------------------------------------------------------------------------------------------------------------------------------\n");
printf("\tSteam  flow, lb/hr\t\t22400\t\t\t\t\t\t17900\n\tSteam pressure, psi in.Hg\t20\t\t9\t\t2\t\t20\t\t9\t\t2\n\tSteam temp,°F\t\t\t258\t\t237\t\t217\t\t258\t\t237\t\t217\n\ttdelT,°F\t\t\t20\t\t18\t\t22\t\t20\t\t18\t\t22\n\tLiquor temp, °F\t\t\t238\t\t219\t\t195\t\t238\t\t219\t\t195\n\tBPR, °F\t\t\t\t1\t\t2\t\t3\t\t1\t\t2\t\t3\n\tVapor temp, °F\t\t\t237\t\t217\t\t192\t\t237\t\t215\t\t192\n\tVapor pressure, pis/in.Hg\t9\t\t2\t\t10\t\t9\t\t2\t\t10\n\tLambda, Btu/lb\t\t\t954\t\t965\t\t983\t\t954\t\t965\t\t983\n\tLiquor in, lb/hr\t\t100000\t\t79400\t\t56900\t\t109000\t\t70000\t\t52400\n\tLiqour out, lb/hr\t\t79400\t\t56900\t\t33300\t\t70000\t\t52400\t\t33300\n\tEvaporation,lb/hr\t\t20600\t\t22500\t\t23500\t\t30000\t\t17600\t\t19100\n\t°Brix(out)\t\t\t\t\t\t\t\t\t\t\t\t\t30\n\tCondenser water, gpm\t\t\t\t455\t\t\t\t\t\t365\n");
printf("\n\t\t\t\tHEAT BALANCE-STRAIGHT TRIPLE EFFECT\n\t\t\t\tCondenser water = 455 gpm\n");
printf("\t--------------------------------------------------------\n");
printf("\tEffect\t\t\tBtu/hr\t\tEvaporation,l/hr\n");
printf("\t--------------------------------------------------------\n");
sf=22400;//lb/hr
lc=100000;//lb/hr
t1=238;//°F
t2=230;//°F
his=sf*940*0.97;//Btu/hr
hlq=lc*(t1-t2)*0.92;//Btu/hr
hd=his-hlq;//Btu/hr
eva=(hd)/954;//lb/hr
l2d=lc-eva;
printf("\t1.a.Heat in steam\t%.2e\n\t  b.Heating liquor\t%.2e\n\t  c.Evaporation\t\t%.4e/954\t%.0f\n\t  d.Liquor to 2d = %.0f",his,hlq,hd,eva,l2d);
//end
