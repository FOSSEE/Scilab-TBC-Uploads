//To determine the necessity of additional capacitors
//Page 398
clc;
clear;

S1=7800; //Peak Load in kVA
T=3*2000; //Total Rating of the Transformer
pf1=0.89; //Load Power Factor
TC=120/100; //Thermal Capability
Qc=1000; //Size of capacitor

P=S1*pf1; //Real Load
Q1=S1*sind(acosd(pf1)); //Reactive Load

Q2=Q1-Qc; //The New Reactive Load
pf2=P/sqrt((P^2)+((Q1-Qc)^2)); //Improved Power Factor

S2=P/pf2; //Corrected Apprarent power

ST=T*TC; //Transformer Capabilty

pf3=P/ST; //New Corrected Power factor required

Q2new=P*tand(acosd(pf3)); //Required Reactive Power
Qcadd=Q2-Q2new; //Additional Rating of the Capacitor

printf('\na) Since the Apparent Power(%g kVAr) is more than Transformer Capability (%g kVAr), \nHence Additional Capacitors are required\n',S2,ST)
printf('b) The Rating of the Addtional capacitor is %g kVAr\n',Qcadd)
