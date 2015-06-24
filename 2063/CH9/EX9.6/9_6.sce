clc
clear
//Input data
P1=1;//Pressure at which air is sucked by a compressor in bar
T1=293;//Initial temperature in K
P2=9;//Delivery pressure after compression in bar
r=1.41;//Isentropic index
n=1.3;//Polytropic index

//Calculations
T21=T1*((P2/P1)^((r-1)/r));//Temperature at the end of isentropic compression process in K
T22=T1*((P2/P1)^((n-1)/n));//Temperature at the end of isentropic compression process in K
T23=T1;//Temperature at the end of isotropic compression process in K (Temperature remains constant)

//Output
printf('(a)Temperature at the end of isentropic compression is %3.2f K\n (b)Temperature at the end of polytropic compression is %3.2f K\n (c)Temperature at the end of isotropic compression is %3.0f K',T21,T22,T23)
