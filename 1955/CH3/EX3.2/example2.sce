clc
clear
//input data
Q1=20//Discharge of air to the centrifugal compressor in m^3/s
V1=Q1//Volume of rate is equal to the discharge in m^3/s
P1=1//Initial pressure of the air to the centrifugal compressor in bar
T1=288//Initial temperature of the air to the centrifugal compressor in K
P=1.5//The pressure ratio of compression in centrifugal compressor
C1=60//The velocity of flow of air at inlet in m/s
Cr2=C1//The radial velocity of flow of air at outlet in m/s
Dh=0.6//The inlet impeller diameter in m
Dt=1.2//The outlet impeller diameter in m
N=5000//The speed of rotation of centrifugal compressor in rpm
n=1.5//polytropic index constant in the given law PV^n
Cp=1005//The specific heat of air at constant pressure in J/kg.K 

//calculations
U1=(3.14*Dh*N)/60//Peripheral velocity of impeller at inlet in m/s
b11=atand(C1/U1)//The blade angle at impeller inlet in degree
U2=(3.14*Dt*N)/60//Peripheral velocity of impeller top at outlet in m/s
T2=T1*(P)^((n-1)/n)//Final temperature of the air to the centrifugal compressor in K
Cx2=((Cp*(T2-T1))/U2)//The whirl component of absolute velocity in m/s
Wx2=U2-Cx2//The exit relative velocity in m/s
a2=atand(Cr2/Cx2)//The blade angle at inlet to casing in degree
b22=atand(Cr2/Wx2)//The blade angle at impeller outlet in degree
b1=Q1/(2*3.14*(Dh/2)*C1)//The breadth of impeller blade at inlet in m 
V2=(P1*V1*T2)/(T1*P*P1)//Volume flow rate of air at exit in m^3/s
Q2=V2//Volume flow rate is equal to discharge in m^3/s
b2=Q2/(2*3.14*(Dt/2)*Cr2)//The breadth of impeller blade at outlet in m

//output
printf('(a)The blade and flow angles\n   (1)The blade angle at impeller inlet is %3.1f degree\n   (2)The blade angle at inlet to casing is %3.1f degree\n   (3)The blade angle at impeller outlet is %3.2f degree\n(b)Breadth of the impeller blade at inlet and outlet\n   (1)The breadth of impeller blade at inlet is %3.3f m\n   (2)The Volume flow rate of air at exit is %3.2f m^3/s\n   (3)The breadth of impeller blade at outlet is %3.4f m',b11,a2,b22,b1,V2,b2)


//comments
//error in the first review is not printing the value of V2 which is corrected
