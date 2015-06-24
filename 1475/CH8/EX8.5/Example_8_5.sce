//Example 8.5 From the life table we have the following table
clc;
clear;
I40=81685;
I50= 74528;
I60=62170;
I70=42091;
P1=I60/I40;
P2=I70/I50;
disp(P1,"Probab. that Smith survives 20 years is = ");
disp(P2,"Probab. that Jones aged 50 years, survives 20 years is = ");
disp(P1*P2,"So the required probability such that Partnership will continue undissolved = ");
disp((1-P1)*P2,"Probability that in the next 20 years Smith will die but Jones survive = ");

