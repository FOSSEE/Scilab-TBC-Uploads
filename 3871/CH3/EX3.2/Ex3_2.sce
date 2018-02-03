clc;
clear all;

//variable declaration
Am      = 25.34;                 //measured value in watts
dA      = -0.11;                 //absolute error in watts
               

//calculations
A      = Am-dA;                  //True value in wtts

//result
mprintf("abslotue error = %3.2f watts",A);
