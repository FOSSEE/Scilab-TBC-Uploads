//ques-4.5
//Determining BOD of given sample
clc
V=25;//Volume of water sample (in mL)
v1=30;//volume of ferrous ammonium sulphate(FAS) in blank (in mL)
v2=18;//volume of FAS in sample (in mL)
n=0.1;//normality of FAS
//1000mL of 1N FAS = 8g oxygen
O=(8*(v1-v2)*n)/1000;//Oxygen in 25mL of water (in g)
O=O*(1000/25);//Oxygen in 1L of water (in g)
printf("COD of given sample is %d ppm.",O*1000);
