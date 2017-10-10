// to find JOR power station
// ex 7.8 pgno.179 
clc
P=26.1e6 // power in mega watts
H=587.3 // m
N=428 // revloution /minutes
Q=6.85 // m3/s
w=(2*N*%pi)/60
g=9.8
mprintf('\n W= %f rad/s',w)
wt=(w*(sqrt(P/10^3)))/((g*H)^(5/4))
mprintf('\n wt =%f',wt)
Ns=(N*(sqrt(26.1e6)))/(H^(5/4)) // speed
mprintf('\n Ns = %f',Ns)
mprintf('\n error in text book they have taken p=26.1e3 instead of 26.1 e6')
n0=P/(9800*Q*H) // overall efficiency
mprintf(' \nOverall efficiency n0= %f percentage',n0*100)
