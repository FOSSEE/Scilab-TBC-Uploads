//chapter 6 Ex 13

clc;
clear;
close;
n=35; newN=7; incExp=42; perheadExp=1;
originalAvg=(incExp+incExp*perheadExp)/(incExp-n);
originalExp=originalAvg*n;
mprintf("The original expenditure is Rs.%d",originalExp);
