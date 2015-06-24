//exa 2.3
clc;clear;close;
format('v',6);
L=400;///MW///total load
delPD=50;//MW//increase in demand
//dC1/dP1=0.2*P1+30
//dC2/dP2=0.15*P2+40
twoC1=0.2;//from above equation
twoC2=0.15;//from above equation
delP1_by_delPD=(1/twoC1)/(1/twoC1+1/twoC2);
delP2_by_delPD=(1/twoC2)/(1/twoC1+1/twoC2);
delP1=delP1_by_delPD*delPD;//MW
disp(delP1,"Increase in generation of unit1(MW) : ");
delP2=delP2_by_delPD*delPD;//MW
disp(delP2,"Increase in generation of unit2(MW) : ");
format('v',7);
P1=L/2+delP1;//load on unit 1
disp(P1,"Total load on unit1(MW) : ");
P2=L/2+delP2;//load on unit 2
disp(P2,"Total load on unit2(MW) : ");
format('v',6);
disp("Checking incremental cost :");
dC1_by_dP1=0.2*P1+30;//Rs./MWh
disp(dC1_by_dP1,"Incremental cost of unit 1(Rs./MWh) : ");
dC2_by_dP2=0.2*P2+30;//Rs./MWh
disp(dC2_by_dP2,"Incremental cost of unit 2(Rs./MWh) : ");
disp("Conclusion : Cost are same(Approximately).");
//Note : Values calculated in the book are slightly wrong because of accuracy in calculation as compared to scilab accuracy.
