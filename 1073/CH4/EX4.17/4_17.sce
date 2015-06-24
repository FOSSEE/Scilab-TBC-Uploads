clc;
clear;
//Example 4.17
sigma=5.67*10^-8    //[W/(sq m.K^4)]
e=0.8
T1=673;  //[K]
T2=303;  //[K]
Do=200   //[mm]
Do=Do/1000  //[m]
L=1      //Let [m]
A1=%pi*Do*L //[m^2/m]
//CAse 1: Pipe to surrundings

Q1=e*A1*sigma*(T1^4-T2^4)   //[W/m]
Q1=5600     //Approximated
//Q1=5600         //[W/m] approximated in book for calculation purpose
//Concentric cylinders
e1=0.8;
e2=0.91;
D1=0.2  //[m]
D2=0.4  //[m]
Q2=sigma*0.628*(T1^4-T2^4)/((1/e1)+(D1/D2)*((1/e2)-1))   //[W/m] length
Red=Q1-Q2   //Reduction in heat loss

printf("\nDue to thermal radiaiton,Loss of heat to surrounding is %d W/m\n",round(Q1));
printf("\nWhen pipe is enclosed in 1 400 mm diameter brick conduit,Loss of heat is %d W/m\n",round(Q2));
printf("\n Reduction in heat loss is %d W/m\n",round(Red));
