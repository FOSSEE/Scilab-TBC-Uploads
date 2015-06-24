//Example 3// frequency
clc;
clear;
close;
//given data :
N=400;//hZ
V=340;//M/S
VS=60;//M/S
N2=((V/(V-VS))*N);//Hz
disp(round(N2),"frequency when engine is approaching to the listner is,(Hz)=")
N3=((V/(V+VS))*N);//Hz
disp(N3,"frequency when engine is moving away from the listner is,(Hz)=")

