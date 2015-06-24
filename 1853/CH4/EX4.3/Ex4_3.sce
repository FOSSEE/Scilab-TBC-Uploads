
//determine the time taken to reach the intantaneous of 150
f=50
Vr=200
Vm=Vr*1.414
t=2.5e-3
w=2*3.14*f*t
v=Vm*sind(w*180/%pi)
v1=150  //v1=Vmsimwt
t=1/18000*asind(150/282.8)
disp( 'voltage equation='+string(v)+' volts  '  ,  'time='+string(t)+' seconds  ')

