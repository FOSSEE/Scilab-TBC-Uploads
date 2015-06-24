// Example 1.45 Two players A and B toss a die alternately 
clc;
clear;
//E1=1/6;
//E2=(5/6)*(5/6)*(1/6);
//E3=(5/6)*(5/6)*(5/6)*(5/6)*(1/6);
disp("A fails, B fails,A fails,B fails, and then A get six =(5/6)*(5/6)*(5/6)*(5/6)*(1/6)", "A fails, B fails and then A get a six = (5/6)*(5/6)*(1/6)","A gets a six in first toss=1/6,");
disp((1/6)/(1-(5/6)^2),"Probability that A wins");
disp("A fails, B fails,A fails,B fails,A fails and then B get six =(5/6)*(5/6)*(5/6)*(5/6)*(5/6)*(1/6)", "A fails, B fails and then A fails but in next trial B get a six = (5/6)*(5/6)*(5/6)*(1/6)","A fails to get a six in first trial but B gets a six in first toss=(5/6)*(1/6)");
disp((5/36)/(1-(5/6)^2),"Probability that B wins");
