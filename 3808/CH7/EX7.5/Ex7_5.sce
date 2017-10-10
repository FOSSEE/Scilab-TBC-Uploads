//Chapter 07: Discrete Probability

clc;
clear;

total_balls=50             //total no of balls in bin
pr=1
//Part-(A) Sampling without replacement
given_no=5         //11 4 17 39 23
select_ways=1              //ways in which that particular order can be drawn
n=total_balls-given_no
for i=total_balls:-1:n+1
pr=pr*i
end
prob=select_ways/pr
disp(prob,'The probability that 11,4,17,39,23 are drawn in that order is')

//Part-(B) Sampling with replacement
total_ways=total_balls**given_no           //5 is the no.of balls ,i.e, 11 4 17 39 23
select_ways=1               //numbers are drawn in that order
prob=select_ways/total_ways
disp(prob,'The probability that 11,4,17,39,23 are drawn in that order is')
