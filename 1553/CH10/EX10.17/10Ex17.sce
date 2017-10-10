//chapter 10 Ex 17

clc;
clear;
close;
died=10/100; left=25/100; popRemain=4050;
popOriginal= popRemain/((1-died)*(1-left));
mprintf("Original population was %d",popOriginal);
