//Example 7.5 Find the index number by the method of aggregates and method of relatives 
clc;
clear;
BP=[35 30 40 107];
CP=[42 35 38 120];
PR= (CP./BP)*100;
SAI=(sum(CP)/sum(BP))*100;
RI=sum(PR)/4;
disp(RI, "Simple A.M of price Relative index =",SAI,"Simple Aggregrative Index  = ",PR,"Price Relative  = ",CP,"Current Price = ",BP,"Base Price =");
