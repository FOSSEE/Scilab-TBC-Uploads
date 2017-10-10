//Chapter 1, Example 1.1
clc
//Initialisation
fo=8387.5;      //in MHz

//Calculation
//defining a function for 6 MHZ channels with 14 MHz separation
deff('[fn]=F(n,fo)','fn=fo-108.5+(14*n)');
deff('[fn]=F1(n,fo)','fn=fo+10.5+(14*n)');

//defining a function for 12 MHZ channels with 7 MHz separation
deff('[fn]=F2(n,fo)','fn=fo-108.5+(7*n)');
deff('[fn]=F3(n,fo)','fn=fo+17.5+(7*n)');

//Result
printf("(1) 6-RF channels with 14 MHz separation")
printf("\n    f1 = %d",F(1,fo))
printf("\n    f11 = %d",F1(1,fo))
printf("\n    f2 = %d",F(2,fo))
printf("\n    f21 = %d",F1(2,fo))
printf("\n    f3 = %d",F(3,fo))
printf("\n    f31 = %d",F1(3,fo))
printf("\n\n(2) 12-RF channels with 7 MHz separation")
printf("\n    f1 = %d",F2(1,fo))
printf("\n    f11 = %d",F3(1,fo))
printf("\n    f2 = %d",F2(2,fo))
printf("\n    f21 = %d",F3(2,fo))
printf("\n    f3 = %d",F2(3,fo))            //The answer provided in the textbook is wrong
printf("\n    f31 = %d",F3(3,fo))           //The answer provided in the textbook is wrong
