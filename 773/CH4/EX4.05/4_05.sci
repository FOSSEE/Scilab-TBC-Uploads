//laplace//
printf("Torque=KmVm=2 \n")
t=2;
disp(t,"Torque(t)=")
Fm=0.2;
disp(Fm,"Coefficient of Viscous friction(Fm)=")
N=4
I=0.2
F1=0.05
printf("Wnl=t/Fm")
Wnl=t/Fm;
disp(Wnl,"No Load Speed(Wnl)=")
printf("Fwt=I+(N^2*F1) \n")
Fwt=I+(N^2*F1);
disp(Fwt,"Total Viscous Friction(Fwt)=")
printf("Te=t-(Fwt*w) \n")
Te=0.8 //load
w=(t-Te)/Fwt;
disp(w,"Speed of Motor(w)=")
