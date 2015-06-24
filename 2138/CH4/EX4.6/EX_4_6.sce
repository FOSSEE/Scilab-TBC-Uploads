//Example 4.6 // total cost of elecric charge
clc;
clear;
close;
nl=12;//no. of lamps
wl=100;//wattage of lamps
hl=6;//each lamps work 6 hours a days
w12=wl*nl*hl;//wattage of 12 lamps in Wh
nf=6;//no. of fans
wf=60;//wattage of fans
hf=5;//each fans work 5 hours a days
w6=wf*nf*hf;//wattage of 12 fans in Wh
nc=2;//no. of electric cookers
wc=1500;//wattage of electric cookers
hc=4;//each electric cookers work 4 hours a days
w2=wc*nc*hc;//wattage of 2 electric cookers in Wh
ng=2;//no. of gysers
wg=1000;//wattage of each gyser
hg=3;//each gyser works 3 hours a day
w21=wg*hg*ng;//total wattage of gysers in Wh
tcg=(w12+w6)*10^-3;//TOTAL WATTAGE OF LAMPS AND FANS
Ccg=40;//IN PAISA
Ecg= (tcg*Ccg*30)/100;//TOTAL ENERGY CHARGES @40 PAISA PER UNIT
tcg1=(w2+w21)*10^-3;//TOTAL WATTAGE OF COOKERS AND GYSERS
Ccg1=35;//IN PAISA
Ecg1= (tcg1*Ccg1*30)/100;//TOTAL ENERGY CHARGES @35 PAISA PER UNIT
tc=Ecg+Ecg1;// IN RUPPES
disp(Ecg,"total cost of electric charge @40 paisa per unit in rupees")
disp(Ecg1,"total cost of electric charge @35 paisa per unit in rupees")
disp(tc,"total charge for ligh and power in rupees")
