//Caption:Discriminant Analysis
//Two-group Discriminan Analysis
//Example11.1
//Page424
clear;
clc;
X1_Below =[3,4,5,6,7,8,9];
X1_Above = [10,11,12,13,14];
X2_Below = [4,5,4,6,4,7,5];
X2_Above = [7,4,5,6,8];
X1_Below_Mean = sum(X1_Below)/length(X1_Below);
X2_Below_Mean = sum(X2_Below)/length(X2_Below);
X1_Above_Mean = sum(X1_Above)/length(X1_Above);
X2_Above_Mean = sum(X2_Above)/length(X2_Above);
disp(X1_Below_Mean,'Group1 X1 Below  Mean=');
disp(X2_Below_Mean,'Group1 X2 Below Mean=');
disp(X1_Above_Mean,'Group2 X1 Above Mean=');
disp(X2_Above_Mean,'Group1 X2 Above Mean=');
a= 0.17229;
b = -0.04973;
S1bar = a*X1_Below_Mean+b*X2_Below_Mean;
disp(S1bar,'Mean of discriminant scores of group1 S1bar=')
S2bar = a*X1_Above_Mean+b*X2_Above_Mean;
disp(S2bar,'Mean of discriminant scores of group2 S2bar=')
for j = 1:length(X1_Below)
    S_1(1,j)= 0.17229*X1_Below(j)-0.04973*X2_Below(j);//Discriminant score (S1j)
    S1(j) = (S_1(1,j)-S1bar)^2
end
disp(S_1(1,:),'Discriminant score S1j=')
disp(S1,'(S1j-S1bar)^2=')
for j = 1:length(X1_Above)
    S_2(2,j)= 0.17229*X1_Above(j)-0.04973*X2_Above(j);//Discriminant score (S2j)
    S2(j) = (S_2(2,j)-S2bar)^2
end
disp(S_2(2,:),'Discriminant score S1j=')
disp(S2,'(S2j-S2bar)^2=')
X1_GrandMean = (sum(X1_Below)+sum(X1_Above))/(length(X1_Below)+length(X1_Above));
X2_GrandMean = (sum(X2_Below)+sum(X2_Above))/(length(X1_Below)+length(X1_Above));
S = 0.17229*X1_GrandMean-0.04973*X2_GrandMean;
disp(S,'Y(Grand Mean)=')
n1 = length(X1_Below);
n2 = length(X1_Above);
VBG = n1*(S1bar-S)^2+n2*(S2bar-S)^2;
disp(VBG,'Sum of squares between groups VBG=')
VWG = sum(S1)+sum(S2);
disp(VWG,'Sum of squares within groups VWG=');
K = VBG/VWG;
disp(K,'The Discriminant ratio K=')
m=2;
disp(m,'No.of factors m =2')
D = (n1+n2-2)*(a*(X1_Above_Mean-X1_Below_Mean)+b*(X2_Above_Mean-X2_Below_Mean))
disp(D,'Mahalanobis Squared Distance D=')
num = n1*n2*(n1+n2-m-1);
den = m*(n1+n2)*(n1+n2-2);
F = (num/den)*D;
disp(F,'F Ratio F=')
Ftable = 4.26;
disp(Ftable,'The table value of F for(2,9) degrees of freedom=')
if (F>Ftable)
    disp('The calculated F value > table F value. Hence Reject Null Hypohesis')    
else
    disp('Accept Null Hypothesis')
end
//Result
 
// Group1 X1 Below  Mean=   
//     6.  
// Group1 X2 Below Mean=   
//     5.  
// Group2 X1 Above Mean=   
//    12.  
// Group1 X2 Above Mean=   
//    6.  
// Mean of discriminant scores of group1 S1bar=   
//    0.78509  
// Mean of discriminant scores of group2 S2bar=   
//    1.7691  
// Discriminant score S1j=   
//    0.31795    0.44051    0.66253    0.73536    1.00711    1.03021    1.30196  
// (S1j-S1bar)^2=   
//    0.2182198  
//    0.1187354  
//    0.0150210  
//    0.0024731  
//    0.0492929  
//    0.0600838  
//    0.2671546  
// Discriminant score S1j=   
//    1.37479    1.69627    1.81883    1.94139    2.01422  
// S2j-S2bar)^2=   
//    0.1554804  
//    0.0053042  
//    0.0024731  
//    0.0296838  
//    0.0600838  
// Y(Grand Mean)=   
//    1.1950942  
// Sum of squares between groups VBG=   
//   2.8241374  
// Sum of squares within groups VWG=   
//   0.9840058  
// The Discriminant ratio K=   
//   2.8700414  
// No.of factors m =2   
//   2.  
// Mahalanobis Squared Distance D=   
//  9.8401  
// F Ratio F=   
//  12.915131  
// The table value of F for(2,9) degrees of freedom=   
//  4.26  
// The calculated F value > table F value. Hence Reject Null Hypohesis 