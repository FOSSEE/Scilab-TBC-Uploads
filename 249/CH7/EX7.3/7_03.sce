clear
clc
CAo=2;
//Since S is the desired Product
//Q(S/A)=2CA/(1+CA)^2
//Part a
//Csf=(CAo-CA)*2*CA/(1+CA)^2
//on differentiating this to get max Csf,we get max value at
CA=0.5;
Csf=(CAo-CA)*2*CA/(1+CA)^2;
printf("\n Part a")
printf("\n For Mixed Flow Reactor")
printf("\n Maximum expected Cs is %f",Csf)
//For Plug Flow Reactor
//Production of s is max at 100% Conversion of A
CAf=0;
Csf=-1*integrate('2*CA/(1+CA)^2','CA',CAo,CAf);
printf("\n Part b")
printf("\n For Plug Flow")
printf("\n Maximum expected concentration of S is %f \n",Csf)
//Part C
//Since no reactant leaves the system unconverted,what is important is to operate at condition of highest fractional yield
//ie. at CA=1 where Q(S/A)=0.5
CA=1;
Csf=(CAo-CA)*2*CA/(1+CA)^2;
printf("Part c")
printf("\n For MFR with separation and recycle" )
printf("\n Concentration of Csf is %f",Csf)