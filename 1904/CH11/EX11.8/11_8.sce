//To Determine the Conditional Outage Probabilites
//Page 620
clc;
clear;

//Conditional Outage Probabilites From The Table Given
P11=40/100;
P12=30/100;
P13=30/100;
P21=20/100;
P22=50/100;
P23=30/100;
P31=25/100;
P32=25/100;
P33=50/100;

//Transition Matrix
P=[P11,P12,P13;P21,P22,P23;P31,P32,P33];

printf("\na) The Conditional Outage Probabilites for:\n")
printf("Presently Outaged Feeder is 1, Next Outaged Feeder is 1 is %g\n",P11)
printf("Presently Outaged Feeder is 1, Next Outaged Feeder is 2 is %g\n",P12)
printf("Presently Outaged Feeder is 1, Next Outaged Feeder is 3 is %g\n",P13)
printf("Presently Outaged Feeder is 2, Next Outaged Feeder is 1 is %g\n",P21)
printf("Presently Outaged Feeder is 2, Next Outaged Feeder is 2 is %g\n",P22)
printf("Presently Outaged Feeder is 2, Next Outaged Feeder is 3 is %g\n",P23)
printf("Presently Outaged Feeder is 3, Next Outaged Feeder is 1 is %g\n",P31)
printf("Presently Outaged Feeder is 3, Next Outaged Feeder is 2 is %g\n",P32)
printf("Presently Outaged Feeder is 3, Next Outaged Feeder is 3 is %g\n",P33)
printf("\nb) Transition Matrix is\n")
disp(P)
printf("\nc) The Transition figure is displayed in the result file attached to this code\n")
