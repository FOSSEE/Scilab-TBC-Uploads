//ques-5.6
//Calculating equivalent conductance of solution
clc
C=0.01;//normality of solution
k1=126.5//equivalent conductance at infinite dilution (in L^2 mho/eq)
k2=k1-(60.2+0.229*k1)*sqrt(C);//equivalent conductance (in L62 mho/eq)
printf("The equivalent conductance of solution is %.3f L^2 mho/eq.",k2);
