// Problem 3.2,Page no.54

clc;clear;
close;


//D=(D_0-2) //cm //Inside Diameter of cyclinder
//A=(%pi*(D_0-1)) //cm**2 //Area of cross-section
//L=(%pi*(D_0-1)*5400) //N //Crushing load for column
F=6 //Factor of safety
T=1 //cm //wall thickness of cyclinder

//S=L*F**-1
//After Simplifying,we get
S=600*10**3

//Calculations

D_0=(S*F)*(%pi*54000)**-1+1 //cm //Outside diameter of cyclinder

//Result
printf("The outside Diameter of cyclinder is %.2f cm",D_0)
