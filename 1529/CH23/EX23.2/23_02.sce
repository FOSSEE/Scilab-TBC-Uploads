//Chapter 23, Problem 2
clc;
ns=900/60;                  //synchroous speed
f=60;                       //supply frequency
p=f/ns;                     //no of pole pairs
printf("number of pole pairs = %d\n",p);
printf("therefore, number of poles = %d",p*2);
