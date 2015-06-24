//Example 11-3,Page no - 430

clear
clc

block =512
packets =8
BER = 2*10^-4
 
avg_errors = block*packets*8*BER

printf('Average number of errors are %.4f',avg_errors) 
