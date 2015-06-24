Nch=395
ncpcl=7
Pb=.01
N=Nch/ncpcl
H=3/60
Aav=44.2
Y=Aav/H
disp(Y,'average number of calls/hr. i.e(omnidirectional case) Y is')

nspc=3
Nchps=N/nspc
Aav1=11.2
avnc=Aav1/H
Y1=avnc*nspc
disp(Y1,'average number of calls/hr. ie.(3-sector case) Y is')
DTRef=(Y-Y1)/Y
disp(DTRef,'decrease in trunking efficiency')

nspc1=6
Nchps1=N/nspc1
Aav2=4.1
avnc1=Aav2/H
Y2=avnc1*nspc1
disp(Y2,'average number of calls/hr. ie.(6-sector case) Y is')
DTRef1=(Y-Y2)/Y
disp(DTRef1,'decrement in trunking efficiency')

