//Example 3.2: miller indices
clc;
clear;
close;
//given data 
x1=0;//
x2=2;//
x3=0;//
h1=%inf;//
h2=1/x2;//
h3=%inf;//
disp("Miller indices of the plane (020) are: "+string(h1)+","+string(h2)+","+string(h3))
x11=1;//
x21=2;//
x31=0;//
h11=1/x11;//
h21=1/x21;//
h31=%inf;//
disp("Miller indices of the plane (120) are : "+string(h11)+","+string(h21)+","+string(h31))
x111=2;//
x211=2;//
x311=0;//
h111=1/x111;//
h211=1/x211;//
h311=%inf;//
disp("Miller indices of the plane (220) are : "+string(h111)+","+string(h211)+","+string(h311))
//miller indices for plane (120) is calculated wrong in the book
