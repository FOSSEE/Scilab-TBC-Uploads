//Example 11// Ch 2
clear all
clc
close

phi1=0;
phi3=10;

phir=[phi1;phi3];
sl=[1.25 -0.014;-0.014 0.8381]; //elements of global stiffness matrix
sr=-[-0.7786 -0.4571;-0.4571 -0.3667];//elements of global stiffness matrix

phil=inv(sl)*sr*phir

printf('value of potentials at the nodes are %f \n',phil)
