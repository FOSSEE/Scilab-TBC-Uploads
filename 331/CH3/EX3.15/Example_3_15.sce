//Caption: Average Deviation and Coefficient of AD
//Example3.15
//Page54
clear;
clc;
X = [50,100;100,150;150,200;200,250;250,300;300,350;350,400;400,450;450,500]//No. of Shares applied for 
f = [2500,1500,1300,1100,900,750,675,525,450]//No. of Applications 
[m,n] = size(X);
N = sum(f);
C = diff(X(1,:));
mid = ceil(m/2);
//Mean value
A = X(mid,1)+(C/2); 
Sig_f = cumsum(f); //Cumulative frequency
for i =1:m
    Xi(i)= sum(X(i,:))/2; //mid point
    d(i) = (Xi(i)-A)/C;
    fd(i) = f(i)*d(i);
end
Xmean = A+((sum(fd)/N)*C);
disp(Xmean,'The Arithmetic Mean of the Xmean=')
//Median Value
cen = N/2;
for  i = 1:m
    if ((Sig_f(i)< cen) &(cen<Sig_f(i+1))) then
        L = X(i+1,1);
        Fre = f(i+1);
        F = Sig_f(i)
        C = diff(X(i+1,:));
    end
end
disp(L,'Lower limit of the median class L =')
disp(Fre,'Frequency of the Median class f =')
disp(F,'Cumulative frequency of the previous class F=')
disp(C,'Width of the class interval C=')
Median = L+(((N/2)-F)*C/Fre);
disp(Median,'Median of the No. of Shares applied for =')
//Average Deviation
AD = 0;
for i = 1:m
    AD = AD+abs(f(i)*(Xi(i)-Xmean));
end
AD = AD/N;
disp(AD,'Average Deviation AD=')
//Coefficient of Average Deviation
Coeff_AD = AD/Xmean;
disp(Coeff_AD,'Coefficient of Average Deviation =')
//Result
//The Arithmetic Mean of the Xmean=   209.40722  
//Lower limit of the median class L =     150.  
//Frequency of the Median class f =      1300.  
//Cumulative frequency of the previous class F=  4000.  
//Width of the class interval C=    50.  
//Median of the No. of Shares applied for =   182.69231  
//Average Deviation AD=       104.60995  
//Coefficient of Average Deviation =     0.4995527  