//To determine the substation parameters for various Load densities
//Page 208
clc;
clear;

D=[500,500,2000,2000,10000,10000,2000,2000]; //Load Densities in kVA/sq.miles
TAn=[6,6,3,3,1,1,15,15]; //Substation Area in sq.miles
VD=[3,6,3,6,3,6,3,6]; //Maximum Total Primary Feeder Voltage drops in percentage
Vll=[4.16,4.16,4.16,4.16,4.16,4.16,13.2,13.2]; //Base Feeder Voltage in kV

TSn=D.*TAn; //Susbstation Load
//From the Graphs of feeders vs load desity in the textbook; The Number of feeders are found to be

n=[4,2,5,3,5,4,6,5]; //No of feeders

//Also from the graph, The characteristic or the feeder is determined
//1-5, 7 are VDL feeders
//6 and 8 are TL feeders

Sn=TSn./n; //Load Per Feeder
//To Determine the Load Current
Il=Sn./(sqrt(3).*Vll); 

printf('\na)')
printf('\nThe Substation Size is\n')
disp(TSn)
printf('\nThe Number of Feeders from the Curve is\n')
disp(n)
printf('\nAlso From the Curve, 1,2,3,4,5,7 cases are VDL but 6 and 8 case are TL\n')
printf('\na)')
printf('\nThe Load Current for 6th Case is %g A, which is less than the ampacities of the main but \nmore than that of the lateral, Hence it is thermally limited but not the main feeder\n',Il(6))
printf('\nThe Load Current for 8th Case is %g A, which is less than the ampacities of the main but \nmore than that of the lateral, Hence it is thermally limited but not the main feeder\n',Il(8))
