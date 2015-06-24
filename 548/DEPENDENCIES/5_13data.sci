h=10;//flying altitude in Km
a=10*%pi/180;//angle of attack in radian
S=19.5;//wing planform area in m^2
M=2;//mach no
D=0.41351;//density at 10 Km(Kg/m^3)
T=223.26;//temperature(K) at 10 Km
V=(y*R*T1)^0.5*M //velocity at 10 Km(m/s)
q=D*V^2/2 //dynamic pressure at 10 Km