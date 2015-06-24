//Cpation: Bowley's Measure of Skewness
//Example3.19
//Page63
clear;
clc;
X = [0,4;4,8;8,12;12,16;16,20;20,24;24,28;28,32];//Machine breakdown time (hrs)
f = [26,50,70,80,100,60,50,24]; //No. of machines
cum_f = cumsum(f);//cumulative frequencies
N = sum(f); //total frequency
C = diff(X(1,:)); //class interval
cen1 = N/4;
cen2 = N/2;
cen3 = 3*N/4;
for  i = 1:length(f)
    if ((cum_f(i)< cen1) &(cen1< cum_f(i+1))) then
        L1 = X(i+1,1);
        f1 = f(i+1);
        F1 = cum_f(i)
        C = diff(X(i+1,:));
    end
    if ((cum_f(i)< cen2) &(cen2< cum_f(i+1))) then
        L2 = X(i+1,1);
        f2 = f(i+1);
        F2 = cum_f(i)
    end
    if ((cum_f(i)< cen3) &(cen3< cum_f(i+1))) then
        L3 = X(i+1,1);
        f3 = f(i+1);
        F3 = cum_f(i)
        C = diff(X(i+1,:));
    end
end
disp(L1,'Lower limit of the first quartile class L1 =')
disp(f1,'Frequency of the first quartile class f1 =')
disp(F1,'Cumulative frequency of the previous class w.r.to the first quartile class F1=')
disp(C,'Width of the class interval C=')
Q1 = L1+(((N/4)-F1)*C/f1);
disp(Q1,'Fist Quartile Q1=')
disp(L2,'Lower limit of the second quartile class L2 =')
disp(f2,'Frequency of the second quartile class f2 =')
disp(F2,'Cumulative frequency of the previous class w.r.to the second quartile class F2=')
disp(C,'Width of the class interval C=')
Q2 = L2+(((N/2)-F2)*C/f2);
disp(Q2,'Fist Quartile Q1=')
disp(L3,'Lower limit of the third quartile class L3 =')
disp(f3,'Frequency of the third quartile class f3 =')
disp(F3,'Cumulative frequency of the previous class w.r.to the third quartile class F3=')
disp(C,'Width of the class interval C=')
Q3 = L3+(((3*N/4)-F3)*C/f3);
disp(Q3,'Third Quartile Q3=')
CS = (Q3+Q1-2*Q2)/(Q3-Q1)
disp(CS,'Bowleys coefficient of skewness CS=')
//Result
// 
// Lower limit of the first quartile class L1 =   
// 
//    8.  
// 
// Frequency of the first quartile class f1 =   
// 
//    70.  
// 
// Cumulative frequency of the previous class w.r.to the first quartile class F1=   
// 
//    76.  
// 
// Width of the class interval C=   
// 
//    4.  
// 
// Fist Quartile Q1=   
// 
//    10.228571  
// 
// Lower limit of the second quartile class L2 =   
// 
//    16.  
// 
// Frequency of the second quartile class f2 =   
// 
//    100.  
// 
// Cumulative frequency of the previous class w.r.to the second quartile class F2=   
// 
//    226.  
// 
// Width of the class interval C=   
// 
//    4.  
// 
// Fist Quartile Q1=   
// 
//    16.16  
// 
// Lower limit of the third quartile class L3 =   
// 
//    20.  
// 
// Frequency of the third quartile class f3 =   
// 
//    60.  
// 
// Cumulative frequency of the previous class w.r.to the third quartile class F3=   
// 
//    326.  
// 
// Width of the class interval C=   
// 
//    4.  
// 
// Third Quartile Q3=   
// 
//    21.266667  
// 
// Bowleys coefficient of skewness CS=   
// 
//  - 0.0747196  