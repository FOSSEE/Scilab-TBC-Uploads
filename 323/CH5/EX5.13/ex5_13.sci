//Chapter 5,Ex5.13,Pg5.17
clc;
E2=440 //Secondary voltage
V2=400 //voltage at full load
//Given that power factor=0.8(lagging)
percentreg=((E2-V2)/E2)*100
printf("\n Percentage regulation=%.2f percent\n",percentreg)
