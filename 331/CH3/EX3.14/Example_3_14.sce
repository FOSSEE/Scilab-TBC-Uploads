//Caption: Quartile Deviation
//Example3.14
//Page53
clear;
clc;
X = [0,10;10,20;20,30;30,40;40,50;50,60;60,70;70,80;80,90;90,100];
f = [5,8,10,15,20,10,7,4,3,6];
cum_f = 0;
for i = 1:length(f)
    cum_f = cum_f+f(i);
    sigmaf(i) = cum_f;
end
N = cum_f; //total number of salesman
cen1 = N/4;
cen2 = 3*N/4;
for  i = 1:length(f)
    if ((sigmaf(i)< cen1) &(cen1< sigmaf(i+1))) then
        L1 = X(i+1,1);
        f1 = f(i+1);
        F1 = sigmaf(i)
        C = diff(X(i+1,:));
    end
    if ((sigmaf(i)< cen2) &(cen2< sigmaf(i+1))) then
        L3 = X(i+1,1);
        f3 = f(i+1);
        F3 = sigmaf(i)
        C = diff(X(i+1,:));
    end
end
disp(L1,'Lower limit of the first quartile class L1 =')
disp(f1,'Frequency of the first quartile class f1 =')
disp(F1,'Cumulative frequency of the previous class w.r.to the first quartile class F=')
disp(C,'Width of the class interval C=')
Q1 = L1+(((N/4)-F1)*C/f1);
disp(Q1,'Fist Quartile Q1=')
disp(L3,'Lower limit of the third quartile class L1 =')
disp(f3,'Frequency of the third quartile class f1 =')
disp(F3,'Cumulative frequency of the previous class w.r.to the third quartile class F=')
disp(C,'Width of the class interval C=')
Q3 = L3+(((3*N/4)-F3)*C/f3);
disp(Q3,'Third Quartile Q3=')
QD = (Q3-Q1)/2; //Quartile Deviation
disp('in Lakhs',QD,'Quarile Deviation QD =')
Coeff_QD = (Q3-Q1)/(Q3+Q1);
disp(Coeff_QD,'Coefficient of Quartile Deviation =')
//Result
// 
// Lower limit of the first quartile class L1 =   
// 
//    20.  
// 
// Frequency of the first quartile class f1 =   
// 
//    10.  
// 
// Cumulative frequency of the previous class w.r.to the first quartile class F=   
// 
//    13.  
// 
// Width of the class interval C=   
// 
//    10.  
// 
// Fist Quartile Q1=   
// 
//    29.  
// 
// Lower limit of the third quartile class L1 =   
// 
//    50.  
// 
// Frequency of the third quartile class f1 =   
// 
//    10.  
// 
// Cumulative frequency of the previous class w.r.to the third quartile class F=   
// 
//    58.  
// 
// Width of the class interval C=   
// 
//    10.  
// 
// Third Quartile Q3=   
// 
//    58.  
// 
// Quarile Deviation QD =   
// 
//    14.5  
// 
// in Lakhs   
// 
// Coefficient of Quartile Deviation =   
// 
//    0.3333333  