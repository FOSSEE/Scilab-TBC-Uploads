clc;
//Example 2.23
T1=913     //[K]
T=513     //[K]
T2=313      //[K]
//Q=(T1-T)/(x/(k*A))
//Q=(T-T2)/(1/(h*A))
//x=2k/h
//Q=(T1-T2)/(x/(kA)+1/(h*A))
//Therefore,Q=hA/3*(T1-T2)
//With increase in thickness(100%)
//x1=4*k/h
//Q2=(T1-T2)/(x1/k*A+1/(h*A))
//Q2=(h*A)/5)*(T1-T2)
//Now
h=1;    //Assume
A=1;    //Assume for calculation
Q1=(h*A/3)*(T1-T2)
Q2=((h*A)/5)*(T1-T2)
percent=(Q1-Q2)*100/Q1      //Percent reduction in heat loss
printf("\nTherefore,Percentage reduction in heat loss is %d percent",percent);
