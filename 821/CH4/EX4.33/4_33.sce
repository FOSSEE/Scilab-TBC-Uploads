D=80.36;//dielectric constant//
V=0.01;//viscosity of suspension in dyn sec per cm^2//
P=100;//potential gradient in volt per cm//
u=90000;
EP=0.03;//Electrokinetic potential of the catalyst in volts//
FW=(P*EP*D*3600)/(4*%pi*V*u);//amount of flow of water in cm per hour//
printf('Amount of flow of water through diaphragm=FW=%fcm per hour',FW);
