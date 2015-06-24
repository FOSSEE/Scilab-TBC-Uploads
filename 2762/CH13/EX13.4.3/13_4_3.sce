//Transport Processes and Seperation Process Principles
//Chapter 13
//Example 13.4-3
//Membrane Seperation Processes
//given data
//nomenclature similar to previous problem
xf=0.5;
theta=0.2;//fraction cut
p1=20;//pressure selected for use
ph=80;//pressure selectred for use
alphas=10;
xom=(xf*(1+(alphas-1)*(p1/ph)*(1-xf)))/(alphas*(1-xf)+xf);
xf1=0.65;
xom1=(xf1*(1+(alphas-1)*(p1/ph)*(1-xf1)))/(alphas*(1-xf1)+xf1);
mprintf("minimum reject concentration at xf=0.5= %f",xom);
mprintf(" minimum reject concentration at xf=0.65= %f",xom1);
