//To Determine the Capacitor Size to improve the power factor to a 700kVA Load
//Page 390
clc;
clear;

SL=700; //Load in kVA
pf1=65/100; //Power Factor
PL=SL*pf1; //Real Power
//From the Table of Power Factor Correction
CR=0.74; //Co-relation factor
CS=PL*CR; //Capacitor Size

CSr=360; //Next Higher Standard Capacitor Size

CRn=CSr/PL; //New Co-Relation Factor

//From the table by linear interpolation
pfr=93; //In Percentage
pfn=pfr+(172/320);

printf('\a) The Correction Factor is %g\n',CR)
printf('b) The Capacitor Size Required is %g kVAr\n',CS)
printf('c) Resulting power factor if the next higher standard capacitor size is used is %g percent\n',pfn)
 
