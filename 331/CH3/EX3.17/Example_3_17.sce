//Caption: Coefficient of variation
//Example3.17
//Page59
clear;
clc;
Busi_A = [80,85,70,100,115];
Busi_B = [100,70,90,80,150];
N = length(Busi_A);
XA = sum(Busi_A)/N;
XB = sum(Busi_B)/N;
VarA = 0;
VarB = 0;
for i = 1:N
    VarA = VarA+(Busi_A(i)-XA)^2;
    VarB = VarB+(Busi_B(i)-XB)^2;    
end
VarA = VarA/N;
VarB = VarB/N;
StdA = sqrt(VarA);
StdB = sqrt(VarB);
CovA = (StdA/XA)*100;
CovB = (StdB/XB)*100;
disp(CovA,'Coefficient of variation of A CVA =');
disp(CovB,'Coefficient of variation of B CVB=');
if (CovA<CovB) then
    disp('Since the coefficient of variation of the Business-A is less than')
    disp('that of the Business-B, the cash flow of business-A is more consistent')
    disp('when compared to that of the business-B')
else
    disp('Since the coefficient of variation of the Business-A is greater than')
    disp('that of the Business-B, the cash flow of business-A is not consistent')
    disp('when compared to that of the business-B')
end
//Result
//coefficient of variation of A CVA =   
// 
//    17.568209  
// 
// Coefficient of variation of B CVB=   
// 
//    28.425282  
// 
// Since the coefficient of variation of the Business-A is less than   
// 
// that of the Business-B, the cash flow of business-A is more consistent   
// 
// when compared to that of the business-B 