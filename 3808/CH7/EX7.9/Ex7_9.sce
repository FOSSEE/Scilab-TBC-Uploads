//Chapter 07: Discrete Probability

clc;
clear;

p0=0.9      //prob of bit 0 generation
p1=1-p0   //prob of bit 1 generation
total_bits=10   //total bits generated
reqd_bits=8   //reqd bits out of totalbits generated

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

//Using theorem 2
prob_eight_0=combination(total_bits,reqd_bits)*((p0)**reqd_bits)*((p1)**(total_bits-reqd_bits))

disp(prob_eight_0,'Probability of exactly eight 0 bits generated is')
