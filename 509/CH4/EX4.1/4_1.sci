//Chapter 4 Example 1//
clc
clear
//from table given in the problem we take the required values directly//
//thus the values of various loads are taken as l1,l2,l3........ln//
//total energy produced=te,average demand=ad,total time=t//
l1=400;l2=380;l3=350;l4=300;l5=350;l6=500;l7=700;l8=750;l9=900;l10=1200;l11=1350;l12=1200;l13=1000;l14=950;l15=1250;l16=1300;l17=1400;l18=1300;l19=1500;l20=1800;l21=2000;l22=1950;l23=1000;l24=800;// in kWh//
t=24;// in hrs//
ad=(l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23+l24)/t;
printf("\n Average Demand = %.2f kW\n",ad);
// load factod=lf,max demand=md//
md=l21;//max demand is the highest of all individual demands//
lf=ad/md;
printf("\n Load factor = %.6f \n",lf);
// loss factor=lf,peak loss at peak load=pl,average power loss=apl//
lf=0.14;
pl=108;// in kW//
apl=lf*pl;
printf("\n Average power loss = %.2f kW\n",apl);
// annual power loss= average power loss*365//
apl1=apl*365;
printf("\n Annual Power loss = %.2f kW\n",apl1);
// demand factor=df,connected demand=cd//
cd1=2500;// in kW//
df=md/cd1;
printf("\n Demand Factor= %.2f \n",df);

