//Chapter 7
//Example 7.3
//page 249
//To find the economical operation
clear;clc;

//from the table we got as the output in the example_7_1
//for optimum operation of load 220MW,unit 1&2 must be loaded 100MW and 120MW respwctively
//and for a load of 76MW,unit 1&2 must be loaded 20MW and 56MW respwctively
start_up=400;
//case(i)
printf('\nCase(i)');
//total fuel cost for the load of 220MW during 6AM to 6PM 
Pg1=100;
Pg2=120;
C1=0.1*Pg1^2+40*Pg1+120;
C2=0.125*Pg2^2+30*Pg2+100;
total1=(C1+C2)*12;
printf('\nTotal fuel cost for the load of 220MW during 6AM to 6PM = Rs. %d',total1);

//total fuel cost for the load of 76MW during 6PM to 6AM 
Pg1=20;
Pg2=56;
C1=0.1*Pg1^2+40*Pg1+120;
C2=0.125*Pg2^2+30*Pg2+100;
total2=(C1+C2)*12;
printf('\nTotal fuel cost for the load of 76MW during 6PM to 6AM if both the units run = Rs. %d',total2);

total=total1+total2; //total fuel cost for 24hrs

printf('\nTotal fuel cost for the load during 24hrs if both the units run = Rs. %d',total);

//case(ii)
printf('\n\nCase(ii)');
//If during light load condition unit2 is On and Unit1 is Off then
Pg2=76;
C2=0.125*Pg2^2+30*Pg2+100;
total2=C2*12;
total_case2=total1+total2+start_up;

printf('\nTotal fuel cost for the 24hrs laod if only unit 2 run during light loads is = Rs. %d',total_case2);