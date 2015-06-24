//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.18w
//calculation of value

//given data
x=21.6003;
y=234;
z=2732.10;
a=13;

//calculation
//since a has least significant figures that is 2, we have to sort the other numerics with the same number of significant figures i.e. 2
x=22;
y=234;
z=2732;
a=13;
temp=(x+y+z)*13
//results into temp=38844. Again we need to consider only 2 significant figures, hence
ntemp=39000

printf('value is %d,considering only 2 significant figures value is %d',temp,ntemp);
