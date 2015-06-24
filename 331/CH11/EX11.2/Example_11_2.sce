//Caption: Factor Analysis
//Centroid Method
//Example11.2
//Page439
clear;
clc;
X1 = [6,4,4,1,4,4,3,7,5,5];// Fuel Efficiency
X2 = [8,4,1,2,3,4,3,7,3,4];//Life of the two-wheeler
X3 = [9,6,6,6,5,6,0,6,1,2];//Handling convenience
X4 = [9,8,5,3,5,8,9,9,8,3];//Quality of original spare
X5 = [1,2,1,2,2,2,1,9,1,1];//Breakdown rate
X6 = [2,1,2,3,3,3,3,2,2,0];//Price
n = 6;//number of variables
m = length(X1);//number of sets of observations
F = 3;//number of factors to be identified
f = 1;//current factor number
Xcorr1 = [1,0.742,0.168,0.496,0.484,-0.430;0.742,1,0.424,0.568,0.474,-0.204;0.168,0.424,1,0.050,0.238,0.092]
Xcorr2 = [0.496,0.568,0.050,1,0.29,0.196;0.484,0.474,0.238,0.290,1,0.037;-0.430,-0.204,0.092,0.196,0.037,1];
Xcorr = [Xcorr1;Xcorr2]
Xcorr_ref = abs(Xcorr)
disp(Xcorr_ref,'Correlation Coefficient Matrix=')
for j = 1:n
    S(j)= sum(Xcorr_ref(:,j))
end
disp(S,'column totals S=')
T = sum(S);
disp(T,'Grand total of column totals T=')
Tsqrt = sqrt(T);
for j = 1:n
    L1(j)= S(j)/Tsqrt;
    if j ==n then
        L1(j)=-L1(j);
    end
end
disp(L1,'Loading values of factor1 L1=')
for i = 1:n
    for j =1:n
        P2(i,j)= L1(i)*L1(j);
        R2(i,j) = Xcorr(i,j)-P2(i,j)
        if (R2(i,j)<0) then
            R2_ref(i,j)= -R2(i,j);
        else
            R2_ref(i,j)= R2(i,j);
        end
    end
end
disp(P2,'Cross-Product matrix P2=')
disp(R2,'Residual matrix R2=')
disp(R2_ref,'Reflected residual matrix R2=')
for j = 1:n
    S1(j)= sum(R2_ref(:,j))
end
disp(S1,'column totals S1=')
T1 = sum(S1);
disp(T1,'Grand total of column totals T1=')
Tsqrt1 = sqrt(T1);
for j = 1:n
    L2(j)= S1(j)/Tsqrt1;
    if S1(j)>1 then
        L2(j)=-L2(j);
    end
end
disp(L2,'Loading values of factor2 L2=')
for i = 1:n
    for j =1:n
        P3(i,j)= L2(i)*L2(j);
        R3(i,j) = R2(i,j)-P3(i,j)
        if (R3(i,j)<0) then
            R3_ref(i,j)= -R3(i,j);
        else
            R3_ref(i,j)= R3(i,j);
        end
    end
end
disp(P3,'Cross-Product matrix P3=')
disp(R3,'Residual matrix R3=')
disp(R3_ref,'Reflected residual matrix R3=')
for j = 1:n
    S2(j)= sum(R3_ref(:,j))
end
disp(S2,'column totals S2=')
T2 = sum(S2);
disp(T2,'Grand total of column totals T2=')
Tsqrt2 = sqrt(T2);
for j = 1:n
    L3(j)= S2(j)/Tsqrt2;
    if S2(j)>0.8 then
        L3(j)=-L3(j);
    end
end
disp(L3,'Loading values of factor3 L3=')
for i = 1:n
    for j = 1:F
        h(i) = L1(i)^2+L2(i)^2+L3(i)^2;
    end
end
disp(h,'Communality h^2 =')
EigenValueL1 = sum(L1.^2);
EigenValueL2 = sum(L2.^2);
EigenValueL3 = sum(L3.^2);
EigenValueh = sum(h);
disp(EigenValueL1,'Eigen Value of L1 =')
disp(EigenValueL2,'Eigen Value of L2 =')
disp(EigenValueL3,'Eigen Value of L3 =')
disp(EigenValueh,'Eigen Value of h =')
disp([EigenValueL1/n,EigenValueL2/n,EigenValueL3/n],'Proportion of total variance=')
disp([EigenValueL1/EigenValueh,EigenValueL2/EigenValueh,EigenValueL3/EigenValueh],'Proportion of common variance=')
disp(round(EigenValueL1*100/n),'The proportion of total variance of the factor-1=')
disp(round(EigenValueL2*100/n),'The proportion of total variance of the factor-1=')
disp(round(EigenValueL3*100/n),'The proportion of total variance of the factor-1=')
disp(round(EigenValueL1*100/EigenValueh),'The proportion of common variance=')
disp(round(EigenValueL2*100/EigenValueh),'The proportion of common variance=')
disp(round(EigenValueL3*100/EigenValueh),'The proportion of common variance=')
//Result
  
// Correlation Coefficient Matrix=   
// 
//    1.       0.742    0.168    0.496    0.484    0.43   
//    0.742    1.       0.424    0.568    0.474    0.204  
//    0.168    0.424    1.       0.05     0.238    0.092  
//    0.496    0.568    0.05     1.       0.29     0.196  
//    0.484    0.474    0.238    0.29     1.       0.037  
//    0.43     0.204    0.092    0.196    0.037    1.     
// 
// column totals S=   
// 
//    3.32   
//    3.412  
//    1.972  
//    2.6    
//    2.523  
//    1.959  
// 
// Grand total of column totals T=   
// 
//    15.786  
// 
// Loading values of factor1 L1=   
// 
//    0.8356069  
//    0.8587623  
//    0.4963304  
//    0.6543910  
//    0.6350109  
//  - 0.4930584  
// 
// Cross-Product matrix P2=   
// 
//    0.6982389    0.7175877    0.4147371    0.5468136    0.5306195  - 0.4120030  
//    0.7175877    0.7374727    0.4262298    0.5619663    0.5453235  - 0.4234200  
//    0.4147371    0.4262298    0.2463438    0.3247941    0.3151752  - 0.2447199  
//    0.5468136    0.5619663    0.3247941    0.4282275    0.4155454  - 0.3226530  
//    0.5306195    0.5453235    0.3151752    0.4155454    0.4032389  - 0.3130975  
//  - 0.4120030  - 0.4234200  - 0.2447199  - 0.3226530  - 0.3130975    0.2431066  
// 
// Residual matrix R2=   
// 
//    0.3017611    0.0244123  - 0.2467371  - 0.0508136  - 0.0466195  - 0.0179970  
//    0.0244123    0.2625273  - 0.0022298    0.0060337  - 0.0713235    0.2194200  
//  - 0.2467371  - 0.0022298    0.7536562  - 0.2747941  - 0.0771752    0.3367199  
//  - 0.0508136    0.0060337  - 0.2747941    0.5717725  - 0.1255454    0.5186530  
//  - 0.0466195  - 0.0713235  - 0.0771752  - 0.1255454    0.5967611    0.3500975  
//  - 0.0179970    0.2194200    0.3367199    0.5186530    0.3500975    0.7568934  
// 
// Reflected residual matrix R2=   
// 
//    0.3017611    0.0244123    0.2467371    0.0508136    0.0466195    0.0179970  
//    0.0244123    0.2625273    0.0022298    0.0060337    0.0713235    0.2194200  
//    0.2467371    0.0022298    0.7536562    0.2747941    0.0771752    0.3367199  
//    0.0508136    0.0060337    0.2747941    0.5717725    0.1255454    0.5186530  
//    0.0466195    0.0713235    0.0771752    0.1255454    0.5967611    0.3500975  
//    0.0179970    0.2194200    0.3367199    0.5186530    0.3500975    0.7568934  
// 
// column totals S1=   
// 
//    0.6883406  
//    0.5859465  
//    1.6913123  
//    1.5476123  
//    1.2675222  
//    2.1997807  
// 
// Grand total of column totals T1=   
// 
//    7.9805146  
// 
// Loading values of factor2 L2=   
// 
//    0.2436621  
//    0.2074161  
//  - 0.5986988  
//  - 0.5478312  
//  - 0.4486835  
//  - 0.7786888  
// 
// Cross-Product matrix P3=   
// 
//    0.0593712    0.0505394  - 0.1458802  - 0.1334857  - 0.1093272  - 0.1897369  
//    0.0505394    0.0430215  - 0.1241798  - 0.1136290  - 0.0930642  - 0.1615126  
//  - 0.1458802  - 0.1241798    0.3584402    0.3279858    0.2686263    0.4662000  
//  - 0.1334857  - 0.1136290    0.3279858    0.3001190    0.2458028    0.4265900  
//  - 0.1093272  - 0.0930642    0.2686263    0.2458028    0.2013169    0.3493849  
//  - 0.1897369  - 0.1615126    0.4662000    0.4265900    0.3493849    0.6063563  
// 
// Residual matrix R3=   
// 
//    0.2423899  - 0.0261272  - 0.1008569    0.0826720    0.0627076    0.1717400  
//  - 0.0261272    0.2195058    0.1219500    0.1196627    0.0217408    0.3809326  
//  - 0.1008569    0.1219500    0.3952159  - 0.6027800  - 0.3458015  - 0.1294801  
//    0.0826720    0.1196627  - 0.6027800    0.2716535  - 0.3713482    0.0920630  
//    0.0627076    0.0217408  - 0.3458015  - 0.3713482    0.3954442    0.0007126  
//    0.1717400    0.3809326  - 0.1294801    0.0920630    0.0007126    0.1505371  
// 
// Reflected residual matrix R3=   
// 
//    0.2423899    0.0261272    0.1008569    0.0826720    0.0627076    0.1717400  
//    0.0261272    0.2195058    0.1219500    0.1196627    0.0217408    0.3809326  
//    0.1008569    0.1219500    0.3952159    0.6027800    0.3458015    0.1294801  
//    0.0826720    0.1196627    0.6027800    0.2716535    0.3713482    0.0920630  
//    0.0627076    0.0217408    0.3458015    0.3713482    0.3954442    0.0007126  
//    0.1717400    0.3809326    0.1294801    0.0920630    0.0007126    0.1505371  
// 
// column totals S2=   
// 
//    0.6864936  
//    0.8899191  
//    1.6960844  
//    1.5401794  
//    1.1977549  
//    0.9254655  
// 
// Grand total of column totals T2=   
// 
//    6.935897  
// 
// Loading values of factor3 L3=   
// 
//    0.2606665  
//  - 0.3379086  
//  - 0.6440153  
//  - 0.5848170  
//  - 0.4547960  
//  - 0.3514058  
// 
// Communality h^2 =   
// 
//    0.8255572  
//    0.8946764  
//    1.0195397  
//    1.0703575  
//    0.8113952  
//    0.9729489  
// 
// Eigen Value of L1 =   
// 
//    2.7566285  
// 
// Eigen Value of L2 =   
// 
//    1.568625  
// 
// Eigen Value of L3 =   
// 
//    1.2692212  
// 
// Eigen Value of h =   
// 
//    5.5944748  
// 
// Proportion of total variance=   
// 
//    0.4594381    0.2614375    0.2115369  
// 
// Proportion of common variance=   
// 
//    0.4927413    0.2803883    0.2268705  
// 
// The proportion of total variance of the factor-1=   
// 
//    46.  
// 
// The proportion of total variance of the factor-1=   
// 
//    26.  
// 
// The proportion of total variance of the factor-1=   
// 
//    21.  
// 
// The proportion of common variance=   
// 
//    49.  
// 
// The proportion of common variance=   
// 
//    28.  
// 
// The proportion of common variance=   
// 
//    23. 