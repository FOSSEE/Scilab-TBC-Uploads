// Example 7.19 Annual production of four commodities are given
clc;
clear;
Q54=[125 175 144 140];
R55=[135 187.5 136 130];
W=[20 30 13 17 ];
disp(sum(R55)/4,"Index number for 1955 ",sum(Q54)/4,"Index number for 1954","Using Simple Arithmetic mean of quality relatives",sum(R55.*W)/sum(W),"Index number for 1955 ",sum(Q54.*W)/sum(W),"Index number for 1954 ","Using weighted Arithmetic mean of quality relatives");
