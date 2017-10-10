//chapter 10 Ex 14

clc;
clear;
close;
probTotal=75; 
arith=10; algebra=30; geo=35; 
per_arith=70/100; per_algebra=40/100; per_geo=60/100;
correct=(per_arith*arith+per_algebra*algebra+per_geo*geo);
correctPass=(60/100)*probTotal;
required=correctPass-correct;
mprintf("The number of questions required were %d",required);
