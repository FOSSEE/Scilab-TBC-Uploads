//chapter 10 Ex 13

clc;
clear;
close;
voters=75/100; 
invalid=2/100;
candidate=75/100;
votes=9261; 
totalVotes=votes/(voters*(1-invalid)*candidate);
mprintf("The number of votes enrolled were %d",totalVotes);
