// Ex 3 Page 341

clc;clear;close;
// Given
N=680; // turns
fi=1.6*10^3 ;// Wb
d1=4/100 ;// m
d2=24/100;//m
l=0.6;//m
mu0=4*%pi/10^7 ;// constant


// For air gap : 
A=d1^2 ;// m^2
Bg=fi/A ;//weber/m^2
Hg=Bg/mu0;//AT/m
mmf1=0.001/mu0 ;// AT

// For central limb : 
A=d1^2;// m^2
Bc=fi/A ;//weber/m^2
Hc=900;//AT/m (from magnetization curve)
mmf2=Hc*d2 ;// AT


// For side limb : 
fi=1/2*fi ;// Wb
A=d1^2;// m^2
Bc=fi/A ;//weber/m^2
Hc=520;//AT/m (from magnetization curve)
mmf3=Hc*l ;// AT

mmf_total = mmf1+mmf2+mmf3;// AT
i=mmf_total/N ;// A
printf("Current required  = %0.2f A",i)


// Answer in the textbook are not accurate
