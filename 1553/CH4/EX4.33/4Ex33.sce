//chapter 4 Ex 33

clc;
clear;
close;
Eachday=20; idleFortified=3; twoMonths=60; wageTwoMonths=280;
idleDays=(Eachday*twoMonths-wageTwoMonths)/(Eachday+idleFortified);
mprintf("The worker remained idle for %d days",idleDays);
