close();
clear;
clc;
exec 'symbolic.sce'
syms R1 R2 R3 I
V1 = I*R1;
V2 = I*R2;
V3 = I*R3;
V = V1 + V2 + V3;