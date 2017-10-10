//chapter 21 Ex 11

clc;
clear;
close;
debt=1092; t=3; SI=12/100;
year1=(1+SI);
year2=(1+2*SI);
instalment=debt/(year1+year2+1);
mprintf("Each instalment is Rs.%.0f",instalment);
