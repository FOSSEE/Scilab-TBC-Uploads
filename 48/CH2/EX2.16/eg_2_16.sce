clear;
clc;
par1=['ab','cde','fh','gi'];    //initial partitions par1
par2=['abc','de','fg','hi'];    //partition 2 
//par=par1+par2;
//lub-lower upper bound
par_lub=['abcde','fghi'];
disp(par_lub);
//par=par1.par2
//glb-greatest lower bound
par_glb=['ab','c','de','f','g','h','i'];
disp(par_glb);