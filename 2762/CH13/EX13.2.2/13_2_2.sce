//Transport Processes and Seperation Process Principles
//Chapter 13
//Example 13.2-2
//Membrane Seperation Processes
//given data
//nomenclature similar to previous problem
c1=200;//urea in g/m3
c2=0;
kc1=1.25e-5;
pm=8.73e-6;
kc2=3.33e-5;
Na= (c1-c2)/((1/kc1)+(1/pm)+(1/kc2));
A=2;//area in m2
R=Na*3600*A;//rate of removal
mprintf("flux=%f g/s m2",Na)
mprintf("rate of removal= %f g urea/h",R)
