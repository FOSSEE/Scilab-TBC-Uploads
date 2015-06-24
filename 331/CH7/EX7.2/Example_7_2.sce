//Caption:Dispropotional Stratified Sampling
//Example7.2
//Page198
clear;
clc;
N = 1200; //Size of the population
N1 = 500; //Size of the stratum 1
N2 = 400; //Size of the stratum 2
N3 = 300; //Size of the stratum 3
Sig1 = 49;//variance of the stratum 1
Sig2 = 16;//variance of the stratum 2
Sig3 = 4;//variance of the stratum 3
Std1 = sqrt(Sig1);
Std2 = sqrt(Sig2);
Std3 =  sqrt(Sig3);
n = 90; //Sample size
//Stratum 1=> Locations of schools in rural areas
//Stratum 2=> Locations of schools in semi-urban areas
//Stratum 3=> Locaions of schools in urban areas
q1 = N1/N; //ratio of the stratum 1 with that of the population
q2 = N2/N; //ratio of the stratum 2 with that of the population
q3 = N3/N; //ratio of the stratum 3 with that of the population
n1 = (q1*Std1*n)/(q1*Std1+q2*Std2+q3*Std3);//no.of sampling units of stratum 1
n2 = (q2*Std2*n)/(q1*Std1+q2*Std2+q3*Std3);//no.of sampling units of stratum 2
n3 = (q3*Std3*n)/(q1*Std1+q2*Std2+q3*Std3);//no.of sampling units of stratum 3
disp(floor(n1),' Number of sampling units of stratum 1, n1 =')
disp(floor(n2),' Number of sampling units of stratum 1, n2 =')
disp(ceil(n3),' Number of sampling units of stratum 1, n3 =')
//Result
//Number of sampling units of stratum 1, n1 =   
//     55.  
//Number of sampling units of stratum 1, n2 =   
//    25.  
//Number of sampling units of stratum 1, n3 =   
//   10.  