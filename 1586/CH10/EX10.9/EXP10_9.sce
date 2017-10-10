clc;funcprot(0);//EXAMPLE 10.9
// Initialisation of Variables
%NiL=37;......// percentage of NI the Liquid contains at 1270 degree celsius
%NiS=50;........//percentage of NI the Solid contains at 1270 degree celsius
%NiL2=32;........//percentage of NI the Liquidcontains at 1250 degree celsius
%NiS2=45;........//percentage of NI the Solid contains at 1250 degree celsius
%NiS3=40;........//percentage of NI the Solid contains at 1200 degree celsius
%NiL3=40;.......//percentage of NI the Liquid contains at 1300 degree celsius
//CALCULATIONS
%L=((%NiS-%NiL3)/(%NiS-%NiL))*100;......//Percentage of Liquid at 1270 degree celsius 
%S=((%NiS3-%NiL)/(%NiS-%NiL))*100;.......//Percentage of Solid qt 1270 degree celsius
%L2=((%NiS2-%NiL3)/(%NiS2-%NiL2))*100;....//Percentage of Liquid at 1250 degree celsius 
%S2=((%NiS3-%NiL2)/(%NiS2-%NiL2))*100;....//Percentage of Solid qt 1250 degree celsius
printf("At 1300 degree celsius only one phase so 100 percent Liquid")
disp(round(%L),"Percentage of Liquid at 1270 degree celsius :")
disp(round(%S),"Percentage of Solid qt 1270 degree celsius:")
disp(round(%L2),"Percentage of Liquid at 1250 degree celsius :")
disp(round(%S2),"Percentage of Solid at 1250 degree celsius:")
printf("At 1200 degree celsius only one phase so 100 percent Solid ")
