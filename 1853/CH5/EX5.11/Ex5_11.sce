
//find the torque whn its take scurnt 60amprs
Vl=200
Il=60 //amprs
R=50
I=Vl/R  // amprs
Ia=Il-I  //amprs
f=0.03  // flux 
Z=700
P=4
A=2
T=(0.159*f*Z*Ia*P)/A
disp('Torque='+string(T)+'N-m')
