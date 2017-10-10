//Strength Of Material By G.H.Ryder
//Chapter 19
//Example 1
//To Find Maximum stress at the Fatigue limit for repeated stress conditions, according to Gerber's law and Goodman's Law

clc();

//Initialization of Variables
SigmaU=600;  //Ultimate tension strength, Unit in N/mm^2
El=180;//Endurance limit under reversed stress, Unit in N/mm^2

//Computations
// Under Reversed Stress
M=0;  //B.M for reversed stress=0, Unit in K
Sigma=El; //Unit in Unit in N/mm^2
R=2*Sigma;   //Stress Range, N/mm^2
n=SigmaU/R;  //By Gerber's Formula
//Under Repeated stress
   //R=Sigma
   //M=Sigma/2
   //Sigma=(SigmaU/n)*(1-M^2/SigmaU^2)
//From Gerber's Law
//Solving for quadatic in Sigma
a=1, b=4*SigmaU*n,c=-4*SigmaU^2;
Sigma=(-b+sqrt(b^2-4*c*a))/(2*a); //The answer vary due to round off error

//Result1
printf("The maximum stress at fatigue limit for repeated stress condition is :\n\t")
printf("%.0f N/mm^2 According to Gerbers Law\n\t",Sigma)  //The answer vary due to round off error
//According to Goodman's Law
Sigma=(SigmaU/n)/(1+1/(2*n));    //The answer vary due to round off error

//Result2
printf("%.0f N/mm^2 According to Goodmans Law",Sigma)
