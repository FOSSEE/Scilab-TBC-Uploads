//Example 9// Ch 4
clc;
clear;
close;
// given data
E = 1596; //in V/m
p = 0.133; //in kPa
a = E/p; // in V/m kPa kept constant as in example 8
alpha1 = 39.8;//from example 8
z = 0.0363; //from example 8
d = (1/alpha1)*[log(1/z + 1)];//distance at the transition to a self-sustained discharge 
printf("distance at the transition to a self-sustained discharge %f m",d)
V = E*d;//voltage at the transition to a self sustained discharge
printf("Voltage at the transition to a self sustained discharge %f V",V)
