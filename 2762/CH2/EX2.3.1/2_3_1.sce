//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.3-1
//Principles of Momentum Transfer and Overall Balances
//given data
//a)
del=0.013;//diffusivity
T1=1.37e-2;//concn at pt1 amt of prop/m3
T2=0.72e-2;//concn at pt2
z2=0.4;
z1=0;
shi1=(del*(T1-T2))/(z2-z1);
mprintf("%f amt of property/s m2",shi1)
//b
disp('T=T1+(shi1/del)*(z1-z)')
//c)
z=0.2;//point where concn is being found
T=T1+(shi1/del)*(z1-z);//concentration at mid point
mprintf("%f amt of property/s m3",T)
