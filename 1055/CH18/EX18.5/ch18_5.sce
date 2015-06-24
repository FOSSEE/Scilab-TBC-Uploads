//Determine the equations at the end of first iteration after applying given constraints.
clear 
clc;
Q2=-.225;
dP2=.2-(-.075);
dP3=-.6-(-.3);
dQ3=-.25-(-.9);
dV2=1.04^2 - 1^2;//dV2=|dV2|^2
mprintf("set of linear equations at the end of first iteration are\n");
mprintf("%.3fde2 %.3fde3+ %.3fdf2 %.3fdf3 = %.3f\n",2.846,-1.666,8.975,-5,2.75);
mprintf("%.3fde2 +%.3fde3 %.3fdf2 +%.3fdf3 = %.3f\n",-1.666,6.366,-5,20.90,-.3);
mprintf("%.3fde2  %.3fde3 %.3fdf2 +%.3fdf3 = %.3f\n",8.525,-5,-2.991,1.666,.225);
mprintf("%.3fde2 +%.3fde3+ %.3fdf2 +%.3fdf3 = %.5f\n",2,0,0,0,dV2);
