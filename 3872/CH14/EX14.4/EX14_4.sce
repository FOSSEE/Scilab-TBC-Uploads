//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 14 ; Example 14.1
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;
time_interruptions=[8.17 200;71.3 600; 30.3 25; 267.2 90; 120 700; 10 1500; 40 100];                                                                                                                                               //Number of custumers interrupted for a time duration in minutes
total_customers=2000;                //Total number of customers
SAIFI=(time_interruptions(1,2)+time_interruptions(2,2)+time_interruptions(3,2)+time_interruptions(4,2)+time_interruptions(5,2)+time_interruptions(6,2)+time_interruptions(7,2))/total_customers;                                   //System average interruption frequency index
SAIDI=(time_interruptions(1,2)*time_interruptions(1,1)+time_interruptions(2,2)*time_interruptions(2,1)+time_interruptions(3,2)*time_interruptions(3,1)+time_interruptions(4,2)*time_interruptions(4,1)+time_interruptions(5,2)*time_interruptions(5,1)+time_interruptions(6,2)*time_interruptions(6,1)+time_interruptions(7,2)*time_interruptions(7,1))/total_customers;                                                         //System average interruption duration index
CAIDI=SAIDI/SAIFI;                   //Customer average interruption duration index
ASAI=(365*24*total_customers-(time_interruptions(1,2)*time_interruptions(1,1)+time_interruptions(2,2)*time_interruptions(2,1)+time_interruptions(3,2)*time_interruptions(3,1)+time_interruptions(4,2)*time_interruptions(4,1)+time_interruptions(5,2)*time_interruptions(5,1)+time_interruptions(6,2)*time_interruptions(6,1)+time_interruptions(7,2)*time_interruptions(7,1))/60)*100/(365*24*total_customers);                //Average service availability index
printf('\nSAIFI = %f interruptions/year',SAIFI);
printf('\nSAIDI = %f minutes/year',SAIDI);
printf('\nCAIDI = %f minutes/year',CAIDI);
printf('\nASAI = %f percentage',ASAI);
