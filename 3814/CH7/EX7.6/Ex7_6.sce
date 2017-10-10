// design of bersia power station
// ex 7.6 pgno.178 
clc
p=24.7e6// power watt
h=26.5 //m
N=187.5 // rev/min
Q=104 //m3/s
w=(2*N*%pi)/60
g=9.8
mprintf('\n  w= %f rad/s',w)
wt=(w*sqrt(p/10^3))/(g*h)^(5/4)
mprintf('\n wt =%f',wt)
Ns=(N*sqrt(p/10^3))/(h^(5/4)) // speed
mprintf('\n Ns =%f',Ns)
n0=p/(9800*Q*h) // overall efficiency
mprintf('\n Overall efficiency n0= %f percentage',n0*100)
mprintf('\n Based on specific speed values obtained kaplan turbine is selected with an overall efficiency of %f percentage',n0*100)
