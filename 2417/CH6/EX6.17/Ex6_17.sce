clear;
clc;
printf("\t\t\tProblem Number 6.17\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.17 (page no. 261) 
// Solution

//data of problem6.16
cp=0.24; //Specific heat at constant pressure //Btu/lbm*R
p2=15; //psia //final pressure
p1=100; //psia //initial pressure
T2=460+0;  //absolute  final temperature //unit:R
T1=460+100; //absolute initial temperature //unit:R
J=778; //conversion factor
R=1545/29; //moleculer weight=29 //Unit:ft*lbf/lbm*R //constant of proportionality
//Because cp and R are given,let us first solve for cv,
//cp=(R*k)/(J*(k-1))
k=(cp*J)/((cp*J)-R); //k=cp/cv //ratio of specific heats
printf("Ratio of specific heats k is %f\n",k);
//k=cp/cv
cv=cp/k; //Specific heat at constant volume //Btu/lbm*R
printf("Specific heat at constant volume is %f Btu/lbm*R\n",cv);
//Now, deltas=(cv*log(p2/p1))+(cp*log(v2/v1));
//But, v2/v1=(T2*p1)/(T1*p2)
v2byv1=(T2*p1)/(T1*p2); // v2/v1 //unitless
deltas=(cv*log(p2/p1))+(cp*log(v2byv1)); //The change in enthalpy  //unit:Btu/lbm*R
printf("The change in enthalpy is %f Btu/lbm*R\n",deltas);
//The agreement is very good.
