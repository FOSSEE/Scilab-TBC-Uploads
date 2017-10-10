//Pf at which the slow machine will work

clc;
clear;

pf1=0.8;//Power Factor Lag (Combined)
Pa=2500*(10^3); // Combined Power
Pr=Pa*(tand(acosd(pf1))); // Combined VAr
Pat=1000*(10^3); // Active power of the turbo alternator unity pf so no VAr 
Prt=0;
Pas=Pa-Pat; // Active power of the slow speed alternator
Prs=Pr-Prt; // Reactive power of the slow speed alternator

theta=atand(Prs/Pas); // Power Factor Angle

powfac=cosd(theta); // Power factor

printf('The Power Factor of the slow speed alternator is %g\n',powfac)
