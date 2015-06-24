//Page Number: 299
//Example 5.14
clc;
//Given
f=10D+9;//hz
v0=600;//V
vr=250;//V
ebym=1.759D+11;

//Repeller space
n=1;
l=sqrt((ebym*(n+(3/4))^2*(vr+v0)^2)/(8*f^2*v0));//m
disp('mm',l*1000,'Repeller space:');
