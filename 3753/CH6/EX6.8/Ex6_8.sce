//Example number 6.8, Page number 6.48

clc;clear;close

// Variable declaration
r=poly([0],'r')

// Calculation
a1=4*r/sqrt(3); // in m
R1=(a1/2)-r;           // radius of largest sphere
a2=4*r/sqrt(2); //in m
R2=(a2/2)-r;       // maximum radius of sphere


// Result
disp(R1,"radius of largest sphere is")
disp(R2,"maximum radius of sphere is")
