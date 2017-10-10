//chapter 6 Ex 11

clc;
clear;
close;
n=39; avg39=15;//average of 39 students 
inc=3/12; //months converted to years
avg40=avg39+inc;
Sum39=avg39*n;
Sum40=avg40*(n+1);
teacherAge=Sum40-Sum39;
mprintf("The age of teacher is %d years",teacherAge);

