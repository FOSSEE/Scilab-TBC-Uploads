clc;
k1=4;//kN/m spring constant of spring 1
k2=6;//kN/m spring constant of spring 2
k=k1+k2;//kN/m spring constant of single equivalent spring 
k=k*1000;//N/m
Xm=40;//mm displacement
Xm=Xm/1000;//m
m=50;//kg
// period of vibration
Wn=sqrt(k/m);//rad/s angular velocity
Tn=2*%pi/Wn;//s, period of vibration
printf("Period of vibration= %.3f s\n",Tn);

//maximum velocity
Vm=Xm*Wn;//m/s
printf("Maximum velocity= %.3f m/s\n",Vm);

//Maximum acceleration
am=Xm*Wn^2;//m/s^2
printf("Maximum acceleration= %.2f m/S^2\n",am);
