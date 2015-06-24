
//To determine the most economical cross section for a 3 Phase line 8 km long
//Page 106
clc;
clear;

OFC=5000; //Cost of feeder per km per unit area + 6250
AIDC= 8*OFC/100; //Annual Interest and depriciation charges + 625
AIDCPD= AIDC/365; // Annual Interest and depriciation charges per day
R=1/58; //Resistance of 1m length and 1 sq.mm
CEU= 5/100; // Cost of energy per unit
V=33*(10^3); // Voltage of the feeder
L10=3000*(10^3); // Load for 10 hrs at unity power factor.
L8=1000*(10^3); // Load for 8 hrs at unity power factor.
L6=2000*(10^3); // Load for 6 hrs at unity power factor.

deff('a=LC(b)','a=b/(sqrt(3)*V)')// Funtion to determine the Load Current
I10=LC(L10);// Load Current for 10 hrs at unity power factor.
I8=LC(L8);// Load Current for 8 hrs at unity power factor.
I6=LC(L6);// Load Current for 6 hrs at unity power factor.
ELPD=3*(((I10^2)*10)+((I8^2)*8)+((I6^2)*6))*1000/(100*58); // Energy Loss Over the DAy per km (Area in sq.cm)
CEL=ELPD*CEU/1000; // Cost of energy loass per km
A=sqrt(CEL/AIDCPD); // Cross Sectional Area
printf('The Most Economical Cross Sectional Area for a 3 Phase line 8 km Long is %g sq..cm',A)
