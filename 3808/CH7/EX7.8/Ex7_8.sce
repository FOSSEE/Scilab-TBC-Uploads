//Chapter 07: Discrete Probability

clc;
clear;

times=7       //no of times flipped
total_outcomes=2**times          //outcomes power times flipped

function result=combination(n,r) //function definition
i=n
num=1
denominator=1
l=(n-r)+1
u=n
for i=l:u //to compute the value of the numerator
num=num*i
end
for j=1:r //to compute the value of the denominator
denominator=denominator*j
end
result=num/denominator 
return result
endfunction

reqd_heads=4      //no of heads coming up
ways_heads=combination(times,reqd_heads)
pH=2/3             //biased coin with probability of heads for 1 head
pT=1-pH         //probability of tails is total probability-heads probability
rpH=pH**reqd_heads    //probability of 4 heads outcome
rpT=pT**(times-reqd_heads)    //probability of tails outcome

prob_four_heads=ways_heads*rpH*rpT       //probability of exactly four heads appearing

disp(prob_four_heads,'The probability of exactly four heads appearing is')
