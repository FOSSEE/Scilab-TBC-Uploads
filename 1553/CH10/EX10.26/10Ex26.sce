//chapter 10 Ex 26

clc;
clear;
close;
decRate=10/100;
presentValue=162000; years=2;
valueAfter=presentValue*(1-decRate)^years;
valueBefore=presentValue/(1-decRate)^years;
mprintf("The value after 2 years will be Rs.%d \n and before 2 years was Rs.%d",valueAfter,valueBefore);
