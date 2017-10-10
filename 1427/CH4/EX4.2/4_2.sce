//ques-4.2
//Calculating COD of given sample
clc
v1=5.5;//volume of ferrous ammonium sulphate(FAS) required by unreacted dichromate (in mL)
v2=26;//volume of FAS in sample (in mL)
n=0.1;//normality of FAS
V=25;//volume of distilled water (in mL)
//1000mL of 1N FAS = 8g of oxygen
O=(8*n*(v2-v1))/1000;//oxygen in 25mL sample (in g)
O=O*(1000/25);//oxygen in 1L sample (in g)
printf("COD of the given sample is %d ppm.",O*1000);
