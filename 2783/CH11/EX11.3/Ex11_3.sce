clc
//initialization of new variables
clear
beta_d=15 //degrees  flow turn angle
r2=0.5 //m  tip radius
r1=0.2 //m   hub radius
w=5500 //RPM   rotaion speed
Cz=120 //m/s  Axial velocity
T=350 //k   Temperature
eta=0.98  //Efficiency
// air properties
gama=1.4  
R=286.6
cp=0.24
//calculatons
cp=cp*4200
T01=T
Uhub=2*%pi*r1*w/60
Utip=2*%pi*r2*w/60
w1=sqrt(Utip^2+Cz^2)
a1=sqrt(gama*R*T)
M1=w1/a1
//Hub
beta1=atan(Uhub/Cz)
beta2=beta1*180/%pi-beta_d
beta2=beta2*%pi/180
Cp=1-cos(beta1)^2/cos(beta2)^2
DCth=Uhub-Cz*tan(beta2)
Pr=(1+eta*Uhub*DCth/(cp*T01))^(gama/(gama-1))
printf('Hub:')
printf('\n The pressure rise coefficient is %.2f',Cp)
printf('\n Compression ratio = %.3f',Pr)
//tip
beta1=atan(Utip/Cz)
beta2=beta1*180/%pi-beta_d
beta2=beta2*%pi/180
Cp=1-cos(beta1)^2/cos(beta2)^2
DCth=Utip-Cz*tan(beta2)
Pr=(1+eta*Utip*DCth/(cp*T01))^(gama/(gama-1))
printf('\n tip:')
printf('\n The pressure rise coefficient is %.2f',Cp)
printf('\n Compression ratio = %.3f',Pr)

