clc
t = 0.25 // uncut chip thickness in mm
b = 0.5 // width of cut in cm
v = 8.2 // cutting speed in m/min.
alpha = 20 // rake angle in degrees
alpha2 = alpha*%pi/180 // rake angle in radians
r = 0.351 // cutting ratio
phi = atan(r*cos(alpha2)/(1-r*sin(alpha2))) // shear angle  in radians
phi2 = phi*180/%pi // shear angle in degrees
alpha2 = alpha*%pi/180 // rake angle in radians
bita = 35+alpha-phi2 // degrees
s = cotg(phi) + tan(phi-alpha2) // shear strain
e = s/sqrt(3) // natural strain
sigma = 784*(e)^0.15 // tensile property in N/mm^2
tau = sigma/sqrt(3) // yield shear stress in N/mm^2
As = (b*10*t)/sin(phi) // shear plane area in mm^2
Fs = tau*As // shear gorce in N
R = Fs/cos(phi+(bita*%pi/180)-alpha2)
Fc = R*cos((bita*%pi/180)-alpha2) // cutting force in N
Ft = R*sin((bita*%pi/180)-alpha2) // thrust force in N
printf("\n Cutting force= %0.1f N\n Thrust force = %0.1f N" , Fc , Ft)
// 'Answers vary due to round off error'
