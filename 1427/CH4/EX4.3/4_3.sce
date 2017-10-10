//ques-4.3
//Calculating COD of effluent sample
clc
V=25;//volume of effluent (in mL)
v=8.3;//volume of dichromate (in mL)
M=0.001;//molarity of dichromate
//1000mL of 0.001M dichromate = 6x8x0.001g of oxygen
O=(6*8*M*v)/1000;//oxygen in 25mL sample (in g)
O=O*(1000/25);//oxygen in 1L sample (in g)
printf("COD of effluent sample is %.2f ppm.",O*1000);
