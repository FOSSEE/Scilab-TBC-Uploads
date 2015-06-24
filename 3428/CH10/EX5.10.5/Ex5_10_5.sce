//Section-5,Example-6,Page no.-D.7
//To find the percentage of SO2Cl2 that is decomposed on heating the given gas.
clc;
//R_0/R_t=antilog((k*t)/2.303)
k=2.2*10^-5
t=90*60
s=(k*t)/2.303
//R=R_0/R_t=antilog(s)
R=10^s
pr_SO2Cl2=(1-(1/R))*100
disp(pr_SO2Cl2,'Percentage of SO2Cl2 decomposed')

