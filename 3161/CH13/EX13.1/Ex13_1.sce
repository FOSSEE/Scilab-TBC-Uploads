clc;
//page 631
//problem 13.1

//Given probabilities p1 = p4 = 1/8 & p2 = p3 = 3/8
p1 = 1/8
p4 = 1/8
p2 = 3/8
p3 = 3/8

//The average information H is p1*log2 (1/p1)+p2*log2 (1/p2)+p3*log2 (1/p3)+p4*log2 (1/p4) bits/message
H = p1*log2 (1/p1)+p2*log2 (1/p2)+p3*log2 (1/p3)+p4*log2 (1/p4)

//information rate R is r*H bits/sec where r is 2*B
//R1 = R/B
R1 = 2*H

disp('The average information is '+string(H)+' bits/message')
disp('Information rate '+string(R1)+'*B bits/sec')
