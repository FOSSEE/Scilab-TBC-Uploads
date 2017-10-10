clc 
//variable initialization
V=380 //line voltage in volts
P=8 //number of poles
f=50 //frequency in Hz
n=1.25
N1=600 //speed in rpm
N2=400 //speed in rpm

//solution
Ns=(120*f/P)
s=(Ns-N1)/Ns
Vd1=(3*sqrt(6)*s*(V/sqrt(3)))/(%pi*n)
m=(3*sqrt(6)*(V/sqrt(3)))/(%pi*Vd1)
a=acosd(-(s*(n/m)))
s1=(Ns-N2)/Ns
s1=0.4//TRo avoid further Computational errors
Vdc=(3*sqrt(6)*s1*(V/sqrt(3))/%pi)/n
Vd2=(3*sqrt(6)*s1*(V/sqrt(3)))/(%pi*n)
m1=(((3*sqrt(6))/%pi)*(V/sqrt(3)))/Vd2
a1=acosd(s1/(m1/n))
w1=(2*%pi*Ns)/60
w2=w1/(1+(m/n))//Speed in rad/sec
w21=w2*60/(2*%pi)
printf('\n\n The Firing Angle for 600rpm=%0.1f\n\n',a)
printf('\n\n The Firing Angle for 400rpm=%0.1f\n\n',a1)
printf('\n\n Minimum Possible Speed=%0.1f rpm\n\n',w21)
//The answers vary due to round off error
