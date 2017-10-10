//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_13.sce.

clc;
clear;
Bm=1.1;
V=2.2e3;
f=50;
N=200;

printf("\n\t (a)")
stack_factor=0.9;
pi_m=V/(4.44*f*N);
A=pi_m/(Bm*stack_factor);
printf("\n  Cross sectional area of the core=%3.1f cm^2 \n",A*1e4)
//There is a small (printing) mistake in the final answer of A in the book 

printf("\n\t (b)")
l=250e-2;
H=490;            //from the graph 5.21 H value is taken which is corresponding to B=1.1 wb/m^2
mmf=H*l;
Im=mmf/N;
printf("\n  Magnetizing current=%1.3f A",Im)
