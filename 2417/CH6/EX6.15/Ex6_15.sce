clear;
clc;
printf("\t\t\tProblem Number 6.15\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.15 (page no. 256) 
// Solution

//When solving this type of problem,it is necessary to note carefully the information given and to write the correct energy equation for this process.Because the    process is carried out at constant volume,the heat added equals the change in inernal energy.Because the change in internal energy per pound for the ideal gas is      cv*(T2-T1),the total change in internal energy for m pounds must equals the heat added.Thus,
//data given
Q=0.33; //heat
//Initial conditions
V=60; //in^3 //volume
m=0.0116; //lbs //mass
p1=90; //psia //pressure
T1=460+40; //Fahrenheit temperature converted to absolute temperature
//Final condition=Initial condition + heat
V=60; //in^3 //volume
m=0.0116; //lbs //mass
p2=108; //psia //pressure 
T2=460+140; //Fahrenheit temperature converted to absolute temperature //unit:R
//Q=m*(u2-u1)=m*cv*(T2-T1)
cv=Q/(m*(T2-T1)); //specific heat at constant volume //Btu/lbm*R
printf("Specific heat at constant volume is %f Btu/lbm*R\n",cv);
//To obtain cp,it is first necessary to obtain R.Enough information was given in the initial conditions of the problem to apply eqn. p*V=m*R*T
R=(144*p1*(V/1728))/(m*T1); //1 ft^2=144 in^2 //1 ft^3=1728 in^3 //Unit:ft*lbf/lbm*R //constant of proportionality
printf("Constant of proportionality R is %f ft*lbf/lbm*R\n",R);
//cp-cv=(R/J)
J=778; //conversion factor
cp=cv+(R/J); //Specific heat at constant pressure //Btu/lbm*R
printf("Specific heat at constant pressure is %f Btu/lbm*R\n",cp);
