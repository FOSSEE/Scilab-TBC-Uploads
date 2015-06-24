//Page Number: 488
//Example 9.14
clc;
//Given
e0=8.854D-12;
er=13.1;
vd=2.5D+5; //m/s
e=1.6D-19;
mu=0.015; //m2/Vs

//Criteria
n0L=(e0*er*vd)/(e*mu);
disp('m^-3',n0L,'n0L should be greater than');
