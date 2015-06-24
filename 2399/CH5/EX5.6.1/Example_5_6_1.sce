// Example 5.6.1 
clc;
clear;
p1=50d-6;
p2=0.003d-6;
p3=25d-6;
p4=26.5d-6
EL=10*log10(p1/(p3+p4));        //computing excess loss
IL13=10*log10(p1/p3);     //computing insertion loss
IL14=10*log10(p1/p4);     //computing insertion loss
ct=10*log10(p2/p1);     //computing cross talk
sr=(p3/(p3+p4))*100;    //computing split ratio
printf("\nExcess loss is %.2f dB.\nInsertion loss from port 1 to port 3 is %.2f dB.\nInsertion loss from port 1 to port 4 is %.2f dB.\ncross talk is %.2f dB.\nSplit ratio is %.2f percent",EL,IL13,IL14,ct,sr  );
printf("\nNOTE - calculation error in the book.\n Minus sign is not printed in the answer of excess loss.\nP1 is taken 25 instead of 50 while calculating cross talk.");
//calculation error in the book.Minus sign is not printed in the answer of excess loss.P1 is taken 25 instead of 50 while calculating cross talk. 
//answers in the book with slight deviations
//Excess loss is 0.12 dB.(printing error)
//Insertion loss from port 1 to port 4 is 2.75 dB.
//cross talk is -39.2 dB. (calculation error)
