//Caption: Correlation for Grouped Data (Karl Pearson's Coefficient of Correlation)
//Example10.2
//Page372
clear;
clc;
X = [9,11;11,13;13,15;15,17];//Rate of return
Y = [2,4;4,6;6,8];//Equity (crores of Rs.)
[m1,n1] = size(X);
[m2,n2] = size(Y);
for i = 1:m1
    Xmid(i) = mean(X(i,:));
end
for i = 1:m2
    Ymid(i) = mean(Y(i,:));
end
a = [2,5,1;5,7,2;3,7,8;1,3,6];
disp(Xmid,'Mid-Xi=');
disp(Ymid,'Mid-Yi=');
disp(a,'aij=');
for i = 1:length(Xmid)
    for j = 1:length(Ymid)
        fij(i,j) = a(i,j)*Xmid(i)*Ymid(j);
        fj(j) = sum(a(:,j));
        fjYj(j)= fj(j)*Ymid(j);
        fjYj2(j) = fj(j)*(Ymid(j)^2);
    end
        fi(i)= sum(a(i,:));
        fiXi(i) = fi(i)*Xmid(i);
        fiXi2(i) = fi(i)*(Xmid(i)^2);
        sumfij(i) = sum(fij(i,:));
end
N = sum(fj);
disp(N,'N=')
disp(fij,'fij=')
disp(fj,'fj=')
disp(fjYj,'fjYj=')
disp(fjYj2,'fjYj2=')
disp(fi,'fi=')
disp(fiXi,'fiXi=')
disp(fiXi2,'fiXi2=')
disp(sumfij,'sigmafij=')
sumfjYj = sum(fjYj);
disp(sumfjYj,'fjYj=')
sumfjYj2 = sum(fjYj2);
disp(sumfjYj2,'fjYj2=')
ssumfij = sum(sumfij);
disp(ssumfij,'Sigmafij=')
sumfiXi = sum(fiXi);
disp(sumfiXi,'SigmafiXi=')
sumfiXi2 = sum(fiXi2);
disp(sumfiXi2,'SigmafiXi2=')
rg = (N*ssumfij-sumfiXi*sumfjYj)/(sqrt(N*sumfiXi2-sumfiXi^2)*sqrt(N*sumfjYj2-sumfjYj^2));
disp(rg,'The correlation coefficient rg =')
//Result
// Mid-Xi=   
// 
//    10.  
//    12.  
//    14.  
//    16.  
// 
// Mid-Yi=   
// 
//    3.  
//    5.  
//    7.  
// 
// aij=   
// 
//    2.    5.    1.  
//    5.    7.    2.  
//    3.    7.    8.  
//    1.    3.    6.  
// 
// N=   
// 
//    50.  
// 
// fij=   
// 
//    60.     250.    70.   
//    180.    420.    168.  
//    126.    490.    784.  
//    48.     240.    672.  
// 
// fj=   
// 
//    11.  
//    22.  
//    17.  
// 
// fjYj=   
// 
//    33.   
//    110.  
//    119.  
// 
// fjYj2=   
// 
//    99.   
//    550.  
//    833.  
// 
// fi=   
// 
//    8.   
//    14.  
//    18.  
//    10.  
// 
// fiXi=   
// 
//    80.   
//    168.  
//    252.  
//    160.  
// 
// fiXi2=   
// 
//    800.   
//    2016.  
//    3528.  
//    2560.  
// 
// sigmafij=   
// 
//    380.   
//    768.   
//    1400.  
//    960.   
// 
// fjYj=   
// 
//    262.  
// 
// fjYj2=   
// 
//    1482.  
// 
// Sigmafij=   
// 
//    3508.  
// SigmafiXi=   
// 
//    660.  
// 
// SigmafiXi2=   
// 
//    8904.  
// 
// The correlation coefficient rg =   
// 
//    0.3426722  
 