//A tram car 
//refer fig.16.8 (a),(b) and (c)
//frictional resistance
W=120  //kN
F=5*120/1000  //kN
v=(20*1000)/(60*60)  //m/sec
// (1) on level track
P1=F  //kN
//output power Pw1
Pw1=P1*v  //kW
eta1=0.8
//input power Ip1
Ip1=Pw1/0.8  //kW
// (2) Up the plane
P2=F+W*(1/300)  //kN
//output power required Pw2
Pw2=P2*v  //kW
//Input power of engine Ip2
Ip2=Pw2/0.8  //kW
// (3) Down the incline plane
Pd=F-W*(1/300)
Pwd=0.2*5.5556  //kW
//Input power 
Ipd=1.1111/0.8  //kW
printf("\On level track Input Power=%.3f kW\nUp the plane Input Power=%.3f kW\nDown the incline plane Input Power=%.3f kW",Ip1,Ip2,Ipd)

