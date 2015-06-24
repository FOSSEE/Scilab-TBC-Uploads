clear;
clc;
printf("\n Example 1.5");
//efficiency of the collector for different size ranges
efficiency_1=45;//in percentage for the size range of 0-5um
efficiency_2=80;//in percentage for the size range of 5-10um
efficiency_3=96;//in percentage for the size range greater than 10um

//mass percent of the ndust for various size range
mass_1=50; //in percentage for the size range of 0-5um
mass_2=30; //in percetage for the size range of 5-10um
mass_3=20; //in percentage for the size range greater than 10um
// on the basis of 100kg dust
mass_retained_1=0.45*50;//mass retained(kg) in the size range of 0-5um
mass_retained_2=0.80*30;//mass retained(kg) in the size range of 5-10um
mass_retained_3=0.96*20;//mass retained(kg) in the size range greater than10um
overall_efficiency=0.45*50+0.80*30+0.96*20;
printf("\n the overall efficiency is =%f",overall_efficiency);
