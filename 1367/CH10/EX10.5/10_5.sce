//Find Maximum weight of tin
//Ex:10.5
clc;
clear;
close;
//m be amount of tin
w_sn=900;//weight of tin
w_pb=1000;//weight of lead
m=((w_pb*0.97)-w_sn)/(1-.97);//in grams
m1=m/1000;//maximum mass of tin in kgm
disp(m1,"Maximum weight of tin that can be added without changing systems temperature (in kgm) = ");