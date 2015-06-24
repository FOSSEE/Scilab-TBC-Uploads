
clc
clear
//Input data
T1=25+273//Temperature in K
rp=6//Pressure ratio
Vb=220//Mean velocity in m/s
b1=45//Angle in degrees
a2=b1//Angle in degrees
b2=15//Angle in degrees
a1=b2//Angle in degrees
R=50//Degree of reaction in percent
n=10//Number of stages
in=83//Isentropic efficiency in percent
cp=1.005//Specific heat in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
V1=(Vb/(sind(b2)+(cosd(a1)*tand(a2))))//Velocity in m/s
V2=(V1*cosd(b2))/cosd(b1)//Velocity in m/s
dVw=(V2*sind(a2))-(V1*sind(a1))//Velocity in m/s.Textbook answer is wrong. Correct answer is 127 m/s
T2sT1=rp^((g-1)/g)//Temperature ratio
T2s=(T2sT1*T1)//Temperature in K
dTs=(T2s-T1)//Temperature difference in K
dT=(dTs/(in/100))//Temperature difference in K
W=(cp*dT)//Workdone in kJ/kg
w=(W*10^3)/(Vb*dVw*n)//Work done factor

//Output
printf('Workdone factor of the compressor is %3.2f',w)
