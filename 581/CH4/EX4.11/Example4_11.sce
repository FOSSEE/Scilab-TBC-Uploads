
clear;
clc;

printf("\t Example 4.11\n");

D1=0.03; // outer diameter, m
T1=358; //hot water temperature, K
t1=0.0008; //thickness of fins, m
D2=0.08; // diameter of fins, m
t2=0.02; // spacing between fins, m
h1=20; // convection coefficient, W/(m^2*K)
h2=15; //convection coefficient with fins, W/(m^2*K)

To=295; //surrounding temperature, K

Q=3.14*D1*h1*(T1-To); // if fins are not added.
Q1=199  //heat loss without fins,W/m
printf("\t heat trnsferred without fins is : %.0f W/m\n",Q1);

// we set wall temp.=water temp..since the wall is constantly heated by water, we should not have a root temp. depression problem after the fins are added.hence by looking at the graph, ml(l/Perimeter)^0.5=(h*(D2/2-D1/2)/(125*0.025*t1)) = 0.306, we obtain n(efficiency)=89 percent

Qfin=Q*(t2-t1)/t2 + 0.89*(2*3.14*(D2^(2)/4-D1^(2)/4))*50*h2*(T1-To)+1.14
printf("\t heat transferred with fins is : %.0f W/m or 4.02 times heat loss without fins.\n", Qfin);
//end