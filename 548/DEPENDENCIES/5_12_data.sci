M=2;//mach no at which F-104 is flying
S=19.5;//wing planform area in m^2
//in steady flight lift equals to weight so:
L=7262*9.8 //lift (N)
R=287 ;//gas constant,J/Kg.K
y=1.4; //specific heat ratio for air
//part a(at sea level)
D=1.23;//density at sea level(Kg/m^3)
T=288;//sea level temperature(K)
V=(y*R*T)^0.5*M //velocity at sea level(m/s)
q=D*V^2/2 //dynamic pressure at sea level
//part b(at 10 Km)
D1=0.41351;//density at 10 Km(Kg/m^3)
T1=223.26;//temperature(K) at 10 Km
V1=(y*R*T1)^0.5*M //velocity at 10 Km(m/s)
q1=D1*V1^2/2 //dynamic pressure at 10 Km(N/m^2)
