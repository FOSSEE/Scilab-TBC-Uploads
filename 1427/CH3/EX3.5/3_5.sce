//ques-3.5
//Calculating weight of HCHO required
clc
m=100;//weight of novolac given (in g)
//2 molecules of novolac = 1 molecule of HCHO
//2x96g of novolac = 30g of HCHO
w=(30*m)/(2*96);//weight of HCHO
printf("Weight of HCHO required for %dg of novolac is %.3fg.",m,w);
