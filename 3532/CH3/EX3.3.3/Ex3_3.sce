clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 3.3.3\n')
//given data
m=600//mass of gun barrel in Kgs
k=294000//stiffness in N/m
x=1.3//recoil of gun in meters
//calculations
E=0.5*k*x^2//energy stored at the end of recoil
Vo=sqrt(2*E/m)//velocity of recoil
Cc=2*sqrt(k*m)//critical damping in N-sec/m
Wn=sqrt(k/m)//natural frequency of undamped vibration in rad/sec
T=2*%pi/Wn//time period of undamped vibration in sec
Trecoil=(1/4)*T//time period for recoil or outward stroke in sec
//x=(1.3+28.8*t)*e^(-22.1*t) from eqn 3.3.24
mprintf('a)the initial recoil velocity of barrel is %f m/s\nb)critical damping co-efficient of the dashpot which is engaged at\nthe end of recoil stroke is %f N-sec/m\n\nsubstituting the value for t in eqn 3.3.24,starting from t=0.1 sec\nwith an increment of 0.01sec we get the following observations\n',Vo,Cc)
t=0.1
for i=1:20
   x=(1.3 +28.8*t)*exp(-22.1*t)
   mprintf('x=%f at t=%f\n',x,t)
   t=t+0.01
end
mprintf('As x approaches the value of 0.05m,the value of t=0.22sec')
Trec=0.22
Tret=Trecoil+Trec
mprintf('\nc)Therefore time required for barrel to return to position 5cm from\n the initial position is %f sec',Tret)
