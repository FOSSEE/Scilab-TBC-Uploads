//ques-8.3
//Calculating iodine value of linseed oil
clc
m=0.15;//mass of linseed oil (in g)
v1=10;//volume of N/10 sodium thiosulphate solution for main titration (in mL)
v2=30;//volume of N/10 sodium thiosulphate solution for blank titration (in mL)
v=v2-v1;//difference in volume (in mL)
//20ml of N/10 sodium thiosulphate = 20mL of N/10 iodine solution
//1L of N/10 iodine solution = 12.7g iodine
i_v=(v/1000)*12.7*(100/m);//iodine value (for100g of oil)
printf("Iodine value of linseed oil is %.2f.",i_v);
