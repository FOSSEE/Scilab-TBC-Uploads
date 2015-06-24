clc
//Example 7.17
//Calculate the ratio of the total weight of the aircraft to the weight of engine
//Let ratio of weight to thrust be denoted by r1
//Let ratio of thrust to the engine weight be denoted by r2
r1=10//dimentionless
r2=2//dimentionless
//weight/engine wt = (weight/thrust)*(thrust/engine wt)
//let ratio of total wt to engine wt be denoted by r3
r3=r1*r2//dimentionless
printf("The ratio of the total weight of the aircraft to the weight of engine is %f",r3);