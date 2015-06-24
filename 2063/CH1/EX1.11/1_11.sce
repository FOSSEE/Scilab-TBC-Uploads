clc
clear
//Input data
r=1.4;//Air standard ratio
p1=1.25;//Cut off ratio 1
p2=1.50;//Cut off ratio 2
p3=2.00;//Cut off ratio 3
rc=16;//Compression ratio

//Calculations
n1=(1-((1/rc^(r-1)*(p1^r-1)/(r*(p1-1)))))*100;//Thermal efficiency of the diesel cycle for cut off ratio 1.25
n2=(1-((1/rc^(r-1)*(p2^r-1)/(r*(p2-1)))))*100;//Thermal efficiency of the diesel cycle for cut off ratio 1.50
n3=(1-((1/rc^(r-1)*(p3^r-1)/(r*(p3-1)))))*100;//Thermal efficiency of the diesel cycle for cut off ratio 2.00

//Output
printf('(a)Thermal efficiency when cut off ratio is 1.25 is %3.2f percent\n (b)Thermal efficiency when cut off ratio is 1.50 is %3.0f percent\n (c)Thermal efficiency when cut off ratio is 2.00 is %3.1f percent\n',n1,n2,n3)
