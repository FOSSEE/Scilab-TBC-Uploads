clc;
Vrated=30;//rated output voltage of generater
Irated=200;//rated output current of generator
Ra=0.03;//armature resistance(including brushes)
Rf=2.4;//field winding resistance
//No-load saturation curve at 2200rpm
If=[2 4 6 8 10 12];
Ea=[15 27 35 40 43 45];
plot(If,Ea);//magnetization curve at 2200 rpm


//(1)AT 2200 rpm
//at no load
Ea1=28;//induced voltage in armature
//for this voltage, the field current required, from magnetization curve is-
If1=4.23;//field current in ampere
Rt1=Ea1/If1;//total shunt field resistance
Re=Rt1-Rf;//external resistance

//at full load
Ea1_=28+Irated*Ra;//induced voltage in armature
//for this voltage, the field current required, from magnetization curve is-
If1_=5.67;//field current
Rt1_=Ea1/If1_;//total shunt field resistance
Re_=Rt1_-Rf;//external resistance


//(2)AT 4500 rpm
//at no load
Ea2__=28;//induced voltage in armature at 4500 rpm
Ea2=28*(2200/4500);//Ea at 2200 rpm
//for this voltage, the field current required, from magnetization curve is-
If2=1.833;//field current in ampere
Rt2=Ea2__/If2;//total shunt field resistance
Re__=Rt2-Rf;//external resistance

//at full load
Ea2___=28+Irated*Ra;//induced voltage in armature at 4500 rpm
Ea2_=34*(2200/4500);//Ea at 4500 rpm
//for this voltage, the field current required, from magnetization curve is-
If2_=2.17;//field current
Rt2_=Ea2__/If2_;//total shunt field resistance
Re___=Rt2_-Rf;//external resistance
Pmax=If1_*If1_*min(Re,Re_,Re__,Re___);
printf('The minimum & maximum value of external resistance is %f & %fohm respectively.\nMaximum power dissipated through rheostat is %f ohm.',min(Re,Re_,Re__,Re___),max(Re,Re_,Re__,Re___),Pmax);

