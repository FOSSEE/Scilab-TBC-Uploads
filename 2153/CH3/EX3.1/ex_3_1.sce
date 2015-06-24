//Example 3.1: miller indices
clc;
clear;
close;
//given data 
x1=1;//
x2=1;//
x3=2;//
h1=1/x1;//
h2=1/x2;//
h3=1/x3;//
disp("Miller indices of the plane (112) are: "+string(h1)+","+string(h2)+","+string(h3))
x11=0;//
x21=0;//
x31=1;//
h11=%inf;//
h21=%inf;//
h31=1/x31;//
disp("Miller indices of the plane (001) are : "+string(h11)+","+string(h21)+","+string(h31))
x111=1;//
x211=0;//
x311=1;//
h111=1/x111;//
h211=%inf;//
h311=1/x311;//
disp("Miller indices of the plane (101) are : "+string(h111)+","+string(h211)+","+string(h311))
