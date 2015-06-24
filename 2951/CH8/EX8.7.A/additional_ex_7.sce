clc;
clear;

// probability of all the events are same
syms N;

H_X=N*[(-1/N)*log(1/N)]; //H(X)=(-1/N)log(1/N)+(-1/N)log(1/N)+....N times

disp(H_X,"H(X)=");
