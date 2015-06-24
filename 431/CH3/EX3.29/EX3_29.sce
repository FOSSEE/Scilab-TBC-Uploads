//Calculate efficiency of transformer //Chapter 3
//Example 3.30
//page 237
clear;
clc;
disp("Example 3.30")
kVA=10;                    //rating of the transformers
V1=400;                    //primary voltage in volts
V2=200;                    //secondary voltage in volts
f=50;                      //frequency in hertz
MAXeffi=0.96;              //maximium efficiency
output1=(kVA*0.75);        //output at 75% of full load
input1=(output1/MAXeffi);
printf("\nInput at 75percent of full load=%fkW",input1);
TL=input1-output1;
printf("\nTotal losses=%fkW",TL);
Pi=TL/2;
Pc=TL/2;
disp("Maximiunm efficiency occurs at 3/4th of full load")
Pc=Pi/(3/4)^2;
printf("\nThus,total losses on full load=%fW",((Pc+Pi)*1000));
pf=0.8;               //power factor lagging
effi=(kVA*pf*100)/((kVA*pf)+(Pc+Pi));
printf("\nEfficiency on full load. 0.8 power factor lagging=%fpercent",effi)


