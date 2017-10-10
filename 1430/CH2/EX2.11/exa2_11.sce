// Example 2.11
// Superposition with a Controlled Source
// From figure 2.22(b)
i_1_1=30/(6*9+(4+2));// Contribution of 30-V Source
// From figure 2.22(c), Applying KVL in bottom Loop we get,
// 6*(9i_1_2)+4(i_1_2-3)+2*i_1_2=0
i_1_2=0.2;
// When Both independent sources active,the value of i_1 is given by the sum
i_1=i_1_1+i_1_2;
disp(i_1,"The Value of i_1 is(in Amps)=")
