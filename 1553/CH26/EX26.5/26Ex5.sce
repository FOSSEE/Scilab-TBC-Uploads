//Chapter 26 Ex5
clc;
clear;
close;
lagBA=40; lagCA=64; //distance B and C are lagging from A
//assuming A covers 1000 m
A=1000;
B=A-lagBA; //from given condition
C=A-lagCA;
lagCB=A*(C/B); //Distance C is lagging from B
mprintf("B should give C a start of %.0f meter",A-lagCB);
