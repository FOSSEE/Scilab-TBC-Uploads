
clc
clear
//Input data
h=70//net head in m
N=700//speed in rpm
o=85//over all efficiency in %
P=350//shaft power in kW
he=92//hydraulic efficiency in %
fr=.22//flow ratio
b=.1//breadth ratio
s=2//outer diameter in terms of inner diametre
//Calculations
vf1=fr*sqrt(2*9.81*h)//velocity in m/s
q=(P/(9.81*h*(o/100)))//discharge in m^3/s
d1=sqrt(q/(.94*b*vf1*3.14))//diameter in metre
b1=d1*b//breadth in metre
d2=d1/2//diametre in metre
vb1=(3.14*d1*N)/60//velocity in m/s
vw1=((he/100)*9.81*h)/vb1//velcity in m/s
a=atand(vf1/vw1)//angle in degrees
bet=atand(vf1/(vw1-vb1))//angle in degrees
vb2=(d2/d1)*vb1//velocity in m/s
bet2=atand(vf1/vb2)//angle in degrees

//Output
printf('(a)the guide vane angle is %3.1f degrees \n (b)the runner vane angle at inlet is %3.1f degrees and outlet is %3.2f degrees \n (c)the diametres of the runner at inlet is %3.1f metre and outlet is %3.2f metre\n (d)the width of the wheel at inlet is %3.2f metre',a,bet,bet2,d1,d2,b1)
