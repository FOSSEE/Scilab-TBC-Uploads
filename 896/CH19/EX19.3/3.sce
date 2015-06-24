clc
//Example 19.3
//Calculate the impeller speed in a model of a large mixer if the power per unit volume remains the same
//let D1/D2 be denoted by ratio_D
ratio_D=5//dimentionless
N2=240//rpm
N1=N2/ratio_D^(2/3)//rpm
printf("the impeller speed in a model of a large mixer if the power per unit volume remains the same is %f rpm",N1);