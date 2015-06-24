clc;clear;
//Example 11.2

//given data
hf=30;//half life in days
//M is intial conc.

//calcualtions
k=0.693/hf;
disp(k,'radioactive disintegration constant in 1/day');
//M/4 is left
t=-log(1/4)/k;
disp(t,'time taken for (ii) in days');
//M/8 is left
t=-log(1/8)/k;
disp(t,'time taken for (iii) in days')