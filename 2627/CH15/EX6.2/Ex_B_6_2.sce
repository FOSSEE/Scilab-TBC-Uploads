//Ex 6.2
clc;clear;close;
format('v',6);
clusters=10;//no. of clusters
cells=7;//no. of cells in a cluster
channels=10;//no. of channels in a cell
F=cells*channels;//no. of full duplex channels/cluster
disp(F,"Number of channels per cluster");
C=clusters*cells*channels;//total no. of channels
disp(C,"Total channel capacity");
