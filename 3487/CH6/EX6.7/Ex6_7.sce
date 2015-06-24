//Chapter 6,Example 6.7 Page 201
clc
clear
//Refer Fig Ex. 6.7
Er = 3.8
v = 21 // KV/cm
ind = v/Er // internal discharge in kV/cm
V = (ind*0.9)+(v*0.1)
printf (" Internal discharge = %f kV/cm\n ",ind)
printf (" V = %f kV rms\n ",V)

//Answer may vary due to round off error
