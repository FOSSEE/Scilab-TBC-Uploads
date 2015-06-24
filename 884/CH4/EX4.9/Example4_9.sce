// Gravimetric Analysis

clear;
clc;

printf("\t Example 4.9\n");

mSample=0.5662;//mass of sample, g

Cl=35.5;//mol mass of Cl, g
AgCl=143.4;//mol mass of AgCl, g

mAgCl=1.0882;//mass of AgCl formed, g

%Cl(AgCl)=Cl/AgCl*100;//percent Cl in AgCl
mCl=%Cl(AgCl)*mAgCl/100;//mass of Cl in AgCl, g

//the same amount of Cl is present in initial sample

%Cl=mCl/mSample*100;//percent Cl in initial sample

printf("\t the percentage of Cl in sample is : %4.2f percent\n",%Cl);

//End
