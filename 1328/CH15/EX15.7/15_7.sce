printf("\t example 15.7 \n");
printf("\t approximate values are mentioned in the book \n");

//Basis: One hour
//20000=WD+WB , material balance
//0.99*WD+(0.05*WB)=(20000*0.5) , Benzene balance
// solving above two eq. we get WD and WB
WD=9570; // lb/hr
WB=10430; // lb/hr

//Compositions and Boiling Points
//Feed
l1 = 10000; //Lb/hr , C6H4
l2 = 10000; //Lb/hr , C7H8
lb = l1+l2; //Lb/hr
printf("\ttotal Lb/hr is %.0f\n",lb);
mo1 = 78.1; //Mol. wt., C6H6
mo2 = 93.1; //Mol. wt , C7H8
mh1 = 128.0; //Mol/hr , C6H6
mh2 = 107.5; //Mol/hr , C7H8
mh = mh1 + mh2; // Mol/hr
printf("\ttotal Mol/hr is %.1f\n",mh);
x1 = mh1/mh;
printf("\tx1 of C6H6 is %.3f\n",x1);
x2 = mh2/mh;
printf("\tx1 of C7H8 is %.3f\n",x2);
x = x1+x2;
printf("\tTotal x1 is %.3f\n",x);
Pp1= 1380; // 214°F
Pp2=575; // 214°F
xp1 = x1*Pp1;
printf("\tx1Pp1 of C6H6 is %.0f\n",xp1);
xp2 = x2*Pp2;
printf("\tx1Pp1 of C7H8 is %.0f\n",xp2);
sxp = xp1 + xp2;
printf("\tTotal x1Pp1 is %.0f\n",sxp);
y1 = xp1/sxp;
printf("\ty1 of C6H6 is %.3f\n",y1);
y2 = xp2/sxp;
printf("\ty1 of C7H8 is %.3f\n",y2);
y = y1+y2;
printf("\tTotal y1 is %.3f\n",y);


w1 = 0.558; //from eq 15.42
printf("\t(WR`/V =((xD - yF)/.(xD - xF))) = %.3fmol/mol\n",w1);
wD=1;
xD = 0.992;
//V = WR' + WD
// WR'/V = 0.558
//Solving, WR' = (WR' * 0.558) + (0.558 * WD)
Wr = 1.27; // mol reflux/mol distillate
printf("\tWR` = %.2f (mol reflux)/(mol distillate)\n",Wr);
Wr1 = Wr * 2; // mol/ mol distillate
printf("\tAssumed 200 percent of the theoretical minimum reflux as economic\n\tWR = %.2f(mol)/(mil distillate)\n",Wr1);
in = (wD * xD)/(Wr1 + 1); //intercept for the upper operating line
printf("\tThe intercept for the upper operating line = %.3f\n",in);
p = 13; // From fig. 15.23, connecting the corresponding lines
printf("\tConnecting the corresponding line in Fig. 15.23, plates required: %.0f\n",p);
fp = 7; // From fig. 15.23, connecting the corresponding lines
printf("\tFeed plate is %.0fth(from top)\n",fp);
d=122.5;
tf = Wr1 * d;
printf("\tTotal reflux is %.1f\n",tf);
printf("\t\t\t\t\tHeat balances");

//Heat Balances
l1 = 33900;
l2 = 9570;
l3 = 24330;
b1 = 253.8;
b2 = 85.8;
b3 = 85.8;
bt1 = b1*l1;
bt2 = b2*l2;
bt3 = b3*l3;
bt4 = 5688000;
printf("\n\t\t\t\tMol/hr\tMol.wt.\tLb/hr\tTemp,°F\tBtu/lb\tBtu/hr\n\t________________________________________________________________________\n\tHeat balance \n\taround condenser:\n");
printf("\t  Heat in:\n\t  Top plate vapor.......433\t87.3\t%.0f\t195\t%.1f\t%.0f\n",l1,b1,bt1);
printf("\t  Heat out:\n\t  Distillate............");
printf("122.5\t78.3\t%.0f\t195\t%.1f\t%.0f\n",l2,b2,bt2);
printf("\t  Reflux................");
printf("310.5\t78.3\t%.0f\t195\t%.1f\t%.0f\n",l3,b3,bt3);
printf("\t  Condenser duty, by\n\t  difference........... .....   ....    ......  ..");
printf(".     .....   5688000\n");
printf("\t\t\t\t\t\t\t\t\t_______\n\t\t\t\t\t\t\t\t\t8600000\n\n");

lam = 153; // At 246 °F, Btu/hr
rv = 5800000/153; //Lb/hr
printf("\tReboiler vapor is %.2e lb/hr\n",rv);
to = rv + 10430; //Lb/hr
printf("\tTrapout is %.3e lb/hr\n",to);

printf("\n\t\t\t\tMol/hr\tMol.wt.\tLb/hr\tTemp,°F\tBtu/lb\tBtu/hr\n\t________________________________________________________________________\n");
printf("\tHeat in:\n\t  Trapout...............522\t92.8\t%.0f\t246\t108.0\t5230000\n",to);
printf("\t  Reboiler duty, \n\t  by difference.......  ....    ....    .....   ...     .....   5800000\n");
printf("\t\t\t\t\t\t\t\t\t_______\n\t\t\t\t\t\t\t\t\t11030000\n\n");
printf("\n\tReboiler requirements are\n");
printf("\t\tTotal liquid to reboiler\t48330 lb/hr\n\t\tVaporization\t\t\t37900 lb/hr\n\t\tTemperature(nearly isothermal)\t246°F\n\t\tPressure\t\t\t5 psig\n\t\tHeat load\t\t\t5800000 Btu/hr\n")
//end
