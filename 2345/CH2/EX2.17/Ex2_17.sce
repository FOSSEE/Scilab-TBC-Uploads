//Finding fusing current
//Example 2.17(pg. 29)
clc
clear
I2=27.5//current of No.25 wire in Amperes
d=1/2//since I1/I2=1/2
I1=I2*(d^(3/2))
printf('Thus fusing current of No.33 wire is %3.3f amperes \n',I1)
