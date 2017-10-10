//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex11_2.sce

clc;
clear;
t=0.5;        //pole pitch
f=50;
vmp=162;
fd=100e3;
vm=vmp*1e3/(60*60);
pd=fd*vm;
vs=2*t*f;
s=(vs-vm)/vs;
pcu=s*fd*vs;
printf("\n  The developed power by the motor=%d kw \n",pd/1000)
printf("\n  Secondary copper loss=%d kw \n",pcu/1000)
