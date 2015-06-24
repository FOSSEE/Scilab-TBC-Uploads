clear;
clc;
printf("\t\t\tProblem Number 6.10\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.10 (page no. 252) 
// Solution

//The table in Appendix 3 does not give us the enthalpy data at 960R and 540R that we need.Interpolating yields
//  T    hbar      T    hbar
// 537  3729.5    900   6268.1
// 540  3750.4    960   6694.0
// 600  4167.9    1000  6977.9
//So,
hbar540=3729.5+(3/63)*(4167.9-3729.5); //enthalpy //unit:Btu/lbm
hbar960=6268.1+(60/100)*(6977.9-6268.1);  //enthalpy //unit:Btu/lbm
//Note that hbar is given for a mass of 1 lb mole.To obtain the enthalpy per pound,it is necessary to divide the values og h by the molecular weight,28.
h2=6694.0;  //enthalpy //unit:Btu/lbm
h1=3750.4;  //enthalpy //unit:Btu/lbm
T2=500+460; //absolute  final temperature //unit:R
T1=80+460; //absolute initial temperature //unit:R
cbar=(h2-h1)/(28*(T2-T1)); //The mean specific heat at constant pressure  //unit:Btu/lbm*R
printf("The mean specific heat at constant pressure is %f Btu/lbm*R\n",cbar);
//With the more extesive Gas tables,these interpolations are avoided.The Gas Tables provide a relatively easy and accurate method of obtaining average specific heats.Also,these tables have been computerized for ease of application.
