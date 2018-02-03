//===========================================================================
//chapter 5 example 13

clc;clear all;

//variable declaration
V1  = 50*10^-3;         //voltage in V
I1   = 5;               //current in A
I2  = 10;               //current  in A
v1    =4; 
v2    =4.2;

//calculations
//v1     = (r+R1)*I1
//v1     = (r+R1)*I2
//since potential difference is same in both cases 
//v1= v2
R1    = V1/(I1);
R2    = V1/(I2);
r      = ((v2*R2)-(v1*R1))/(v1-v2);
v      = (r+R1)*v1;         //potential difference in V
I       = v/(r);            //current when neither meter in the circuit in A

//result
mprintf("current when neither meter in the circuit = %3.2f A",I);

