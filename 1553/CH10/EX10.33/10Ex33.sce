//chapter 10 Ex 33

clc;
clear;
close;
engPass=80/100; mathPass=85/100; bothPass=75/100; bothFail=40;
total=bothFail/(1-(engPass+mathPass-bothPass));
mprintf("Total number of students are %.0f",total);
