//Caption:Relationship between Mean, Median and Mode
//Example3.11
//Page48
clear;
clc;
X = [0,2;2,4;4,6;6,8;8,10;10,12;12,14;14,16;16,18];
f = [10,15,20,30,8,5,4,3,5];
cum_f = 0;
for i = 1:length(f)
    cum_f = cum_f+f(i);
    sigmaf(i) = cum_f;
end
N = cum_f; //total number of salesman
cen = N/2;
for  i = 1:length(f)
    if ((sigmaf(i)< cen) &(cen< sigmaf(i+1))) then
        L = X(i+1,1);
        Fre = f(i+1);
        F = sigmaf(i)
        C = diff(X(i+1,:));
    end
end
disp(L,'Lower limit of the median class L =')
disp(Fre,'Frequency of the Median class f =')
disp(F,'Cumulative frequency of the previous class F=')
disp(C,'Width of the class interval C=')
Median = L+(((N/2)-F)*C/Fre);
disp(Median,'Median of the travelling allowance of the salesman is Rs =')
disp('Crores')
[Maxf,i]= max(f);
f1 = abs(f(i)-f(i-1));//Absolute difference between freq. of the modal class and
//that of its immediately preceding class
f2 = abs(f(i)-f(i+1));//Absolute difference beween freq. of the modal class and 
//that of its immediately succeeding class
Mode = L+((f1/(f1+f2))*C); 
disp(Mode,'Mode of the annual revenues of the firms is =')
disp('crores')
Mean = (3*Median-Mode)/2;
disp(Mean,'Mean of the annual revenue of the firm is =')
disp('crores')
//Result
//Lower limit of the median class L =   
// 
//    6.  
// 
// Frequency of the Median class f =   
// 
//    30.  
// 
// Cumulative frequency of the previous class F=   
// 
//    45.  
// 
// Width of the class interval C=   
// 
//    2.  
// 
// Median of the travelling allowance of the salesman is Rs =   
// 
//    6.3333333  
// 
// Crores   
// 
// Mode of the annual revenues of the firms is =   
// 
//    6.625  
// 
// crores   
// 
// Mean of the annual revenue of the firm is =   
// 
//    6.1875  
// 
// crores   