//example 4.3 
clc;
clear;
m(1)=32;//tking the given values 
m(2)=log2(m(1)) // making necessary calculations 
m(3)=m(2)-1;
m(4)=m(1)/2;
printf('A %d-to-1 multiplexer requires',m(1));printf(' %d select lines, The lower',m(2));printf(' %d select lines choose',m(3));printf(' %d-to-1 multiplexer outputs. The 2-to-1 multiplexers chooses one of the outpt of two',m(4));printf(' %d-to-1 multiplexers depending on what appears in the',m(4));printf(' %dth select line.', m(2)); //displaying the result 