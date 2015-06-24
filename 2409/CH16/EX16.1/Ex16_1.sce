
//Varaible Declaration

EIRP=55  //EIRP for satellite(dBW)
fD=12.5  //Downlink frequency(GHz)
Pss=-101 //Receiving at ground station direction(degrees west)
Rb=40*10**6  //Transmission Rate(Hz)
D=18   //Diameter of antenna(inches)
n=0.55 //Efficiency of antenna
Tant=70 //Antenna noise(Kelvin)
Teq=100 //Equivalent noise temperature at LNA(Kelvin)
R=6371  //Radius of earth(Km)
L=2   //Transmission losses(dB)
aGSO=42164  //Circumference of earth(km)
k=-228.6   //Boltzmann's constant (dB)
PE=-90  //Longitude of Earth station(degrees west)
LE=45   //Latitude of Earth station(degrees north)
f=14    //Frequency(GHz)
//Calculation
B=PE-Pss
b=acos(cos(B*3.142/180)*cos(LE*3.142/180))
b=b*180/3.142
A=asin(sin(abs(B)*3.142/180)/sin(b*3.142/180))
A=A*180/3.142
Az=180+A  //Azimuth angle of antenna(degrees)
d=(R**2+aGSO**2-2*R*aGSO*cos(b*3.142/180))**0.5 //Range of antenna(km)
El=acos(aGSO*sin(b*3.142/180)/d)  //Elevation angle of antenna(radians)
El=El*180/3.142  //Elevation angle of antenna(degrees)
El=round(El)
d=round(d)
FSL=32.4+20*log10(d)+20*log10(f*10**3)  //Free space loss(dB)
LOSSES=FSL+L  //Total Transmission Losses
Ts=Teq+Tant   //Total system noise temperature(Kelvin)
T=10*log10(Ts)  //Total system noise temperature(dBK)
G=n*(3.192*f*(D/(12)))**2
G=10*log10(G)  //Antenna Gain(dB)
GTR=G-T   //G/T ratio(dB)
CNR=EIRP+GTR-LOSSES-k  //Carrier to noise ratio(dB)
Rb=10*log10(Rb) //Transmission Rate(dBHz)
EbN0R=CNR-Rb   //Eb/N0 ratio at IRD(dB)

//Results
printf("The Azimuth angle of antenna is %.1f degrees" ,Az)
printf("The Elevaation Angle of Antenna is %.f degrees",El)
printf("The Range of Antenna is %.f km",d)
printf("The Eb/N0 ratio at IRD is %.1f dB",EbN0R)
