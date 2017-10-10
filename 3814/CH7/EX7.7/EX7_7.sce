// design of termengor power stations
// ex 7.7 pgno.178
 clc
 Q=125.4 // flow rate at m3/s
 H=101 // m
 N=214.3 // speed in rev/min
 p=90e6 // power to turbine in wattsr
 g=9.8
 w=(2*N*%pi)/60
 mprintf('\n Wt =%f rad/s',w)
 wt=(w*(sqrt(p/10^3)))/((g*H)^(5/4))
 mprintf('\n wt= %f',wt)
 Ns=(N*sqrt(90*1000))/((H)^(5/4))// specific speed
 mprintf('\n Ns = %f ',Ns)
 n0=p/(9800*Q*H) // overall efficiency
 mprintf('\n Over all efficiency n0= %f percentage',n0*100)
