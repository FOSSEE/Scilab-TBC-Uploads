//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.12\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.12  (page no. 526) 
// Solution

COP=2.5; //Coefficient of performance
cp=0.24; //Unit:Btu/(lbm*R) //Specific heat constant for constant pressure process
T1=-100+460; //temperatures converted to absolute temperatures; //Unit:R //lowest temperature of the cycle
T3=150+460; //temperatures converted to absolute temperatures; //Unit:R //Upper temperature of the cycle
//T1/T4-T1 = COP
T4=(3.5*T1)/COP; //Unit:R //temperature at point 4
//T2/T3-T2 =COP
T2=(COP*T3)/3.5; //Unit:R //temperature at point 2
printf("The work of the expander is %f Btu/lbm of air\n",cp*(T4-T1));
printf("The work of the compressor is %f Btu/lbm of air\n",cp*(T3-T2));
printf("The net work required by the cycle is %f Btu/lbm\n",(cp*(T3-T2))-(cp*(T4-T1)));
printf("Per ton of refrigeration,the required airflow is %f lbm/min per ton\n",200/(cp*(T2-T1)));
