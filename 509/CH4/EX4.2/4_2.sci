//Chapter 4 Example2//
clc
clear
//maximum demand of station=md,load factor=lf,average demand=ad//
md=100;// in MW//
lf=0.65;
ad=md*lf;
printf("\n Average Demand = %.f MW\n",ad);
// daily enerqy produced=ed//
ed=ad*24;
printf("\n Daily energy produced = %.f MWh\n",ed);
//plant utilization factor=puf,plant capacity factor=pcf,plant rated capacity=prc//
puf=0.8;
pcf=0.5;
prc=ad/pcf;
printf("\n Plant rated capacity = %.2f MW\n",prc);
// reserve capacity=rc//
rc=prc-md;
printf("\n Reserve Capacity = %.2f MW\n",rc);
// maximum energy produced=me//
me=prc*24;// assumed to be running at all time//
printf("\n Maximum Energy produced = %.2f MWh\n",me);
//maximum energy produced if plant running at full load at all time=mefl//
mefl=ed/puf;
printf("\n Maximum energy that could be produced if running at full load = %.2f MWh\n",mefl);
uf=md/prc;
printf("\n Utilization factor = %.3f \n",uf);
