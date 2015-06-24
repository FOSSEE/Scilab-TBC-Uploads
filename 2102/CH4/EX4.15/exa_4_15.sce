// Exa 4.15
clc;
clear;
close;
// Given data
toh_r= 35;// in ns
toh_nr= 110;// in ns
toh= toh_r*toh_nr/(toh_r+toh_nr);// in ns
nita_int= toh/toh_r;
disp(nita_int,"The internal quantum efficiency is : ")

// Note : There is a calculation error (or miss printed ) in evaluating the value of nita_int (internal quantum efficiency ) so the answer in the book is wrong
