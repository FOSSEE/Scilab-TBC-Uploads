//Example 7.34 From the table of group index and group weights given below calculate the cost of index.
clc;
clear;
I=[428 240 200 125 170];
W=[45 15 8 20 12];
IW=I.*W;
disp(sum(IW)/sum(W),"Cost of Living Index =");

