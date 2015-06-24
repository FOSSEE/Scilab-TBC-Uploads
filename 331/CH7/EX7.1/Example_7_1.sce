//Caption: Proportional Stratified Sampling
//Example7.1
//Page 197
clear;
clc;
N = 200; //Total number of engineering colleges in the university
N1 = 20; //Number of government engineering colleges
N2 = 50; //Number of aided engineering colleges
N3 = 130;//Number of self-financing engineering colleges
n = 20; //Total sample size
n1 = (n/N)*N1;
disp(n1,'The number of colleges to be sampled from government category n1=');
n2 = (n/N)*N2;
disp(n2,'The number of colleges to be sampled from aided category n2=');
n3 = (n/N)*N3;
disp(n3,'The number of colleges to be sampled from self-financing category n3=');
//Result
//The number of colleges to be sampled from government category n1=   
//     2.  
//The number of colleges to be sampled from aided category n2=   
//    5.  
//The number of colleges to be sampled from self-financing category n3=   
//    13.  