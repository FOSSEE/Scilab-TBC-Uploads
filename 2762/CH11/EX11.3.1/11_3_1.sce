//Transport Processes and Seperation Process Principles
//Chapter 11
//Example 11.3-1
//Vapour Liquid Seperation Processes
//given data
//85 deg C
Pa1=116.9;
Pb1=46;
alpha1=Pa1/Pb1;
// 105 deg C
Pa2=204.2;
Pb2=86;
alpha2=Pa2/Pb2;
mprintf("alpha at 85 deg C = %f",alpha1);
mprintf(" alpha at 105 deg C = %f",alpha2);
p=((alpha1-alpha2)/alpha2)*100;
mprintf(" percentage variation=%f",p)
