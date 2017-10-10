//Example 11_12
clc();
clear;
//To compare the energy emitted per unit area of our body to with the same emissivity
t1=37    //Units in Centigrade
t1=273+t1       //Units in K
t2=15    //Units in Centigrade
t2=273+t2       //Units in K
tb_tc=(t1/t2)^4       //Units in terms of (Tb/Tc)^4
tb_tc=tb_tc*100       //In terms of percentage
printf("The radiation defers by %d percent",tb_tc-100)

//In textbook answer is printed wrong as 40% the correct answer is 34%
