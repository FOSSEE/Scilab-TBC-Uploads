//clear//
//Caption:Plotting Bit-Error-Rate versus Q factor
//Example7.3
//page 259
clear;
clc;
close;
Q = 0:0.01:8;
Pe = (1/2)*(1-erf(Q./sqrt(2)));
a =gca();
a.data_bounds =[0,1e-16;8,0.5];
plot(Q,Pe,'r')
xlabel('Q')
ylabel('Pe')
title('BER(Pe) versus the factor Q')
disp(Pe(1),'Probability of error at Q =0')
disp(Pe(101),'Probability of error at Q =1')
disp(Pe(201),'Probability of error at Q =2')
disp(Pe(301),'Probability of error at Q =3')
disp(Pe(401),'Probability of error at Q =4')
disp(Pe(501),'Probability of error at Q =5')
disp(Pe(601),'Probability of error at Q =6')
disp(Pe(701),'Probability of error at Q =7')
disp(Pe(801),'Probability of error at Q =8')
//Result
//Probability of error at Q =0  
//    0.5  
//Probability of error at Q =1   
//    0.1586553  
//Probability of error at Q =2   
//    0.0227501  
//Probability of error at Q =3   
//    0.0013499  
//Probability of error at Q =4   
//    0.0000317  
//Probability of error at Q =5   
//    0.0000003  
//Probability of error at Q =6   
//    9.866D-10  
//Probability of error at Q =7   
//    1.280D-12  
//Probability of error at Q =8   
//    6.106D-16  
