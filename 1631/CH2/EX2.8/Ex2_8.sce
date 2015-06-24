//Caption: Probability
//Example 2.8
//page no 45
//find the probability that recorded number is 2
clc;
clear;
head=1/2;//probability of getting head
tail=1-head;//probability of getting tail
head2= head*1/6;//probability of getting head with recorded number is 2
tail2=tail*1/36;//probability of getting tail with recorded number is 2

//probability of getting recorded number is 2
p=head2+tail2;
disp(p,"probability of getting recorded number is 2");
