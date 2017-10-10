//Example number 7.8, Page number 7.16

clc;clear;close

// Variable declaration
lamda=0.58 // in m
theta1=6.45*%pi/180 // in radian
theta2=9.15*%pi/180 // in radian
theta3=13*%pi/180 // in radian

// Calculations
dbyn1=lamda/(2*(sin(theta1))) // in Angstrom
dbyn2=lamda/(2*sin(theta2))// in Angstrom
dbyn3=lamda/(2*sin(theta3))// in Angstrom
           
// Results
printf("i.  d/n = %.3f Angstroms ",dbyn1)
printf("\nii. d/n = %.3f Angstroms",(dbyn2))
printf("\niii.d/n = %.3f Angstroms",(dbyn3))
