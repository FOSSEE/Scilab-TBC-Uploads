clc;funcprot(0);//EXAMPLE 20.40
// Initialisation of Variables
v1=4.8;......//Volume of air compressed in m^3/s
p1=1;....//Inlet pressure in bar
t1=293;........//Inlet pressure in K
n=1.5;........//Compression index
Cf1=65;......//Air flow velocity at inlet in m/s
Cf2=Cf1;......//Flow velocity is same at inlet and outlet
d1=0.32;..........//Inlet impeller diameter in m
d2=0.62;........//Outlet impeller diameter in m
N=8000;........//Blower rpm
cp=1.005;......//Specific heat at constant pressure in kJ/kgK
//Calculations
t21=t1*((n/p1)^((n-1)/n));....//Temperature at the outlet of compressor in K
Cbl1=(%pi*d1*N)/60;......//Peripheral velocity at inlet in m/s
Cbl2=(%pi*N*d2)/60;......//Tip peripheral velocity at outlet in m/s
Cw2=(cp*(t21-t1)*1000)/Cbl2;
be1=(atan(Cf1/Cbl1))*180/%pi;be2=(atan(Cf2/(Cbl2-Cw2)))*180/%pi;......//Blade angles at the tip of the impeller
al2= (atan(Cf2/Cw2))*180/%pi; 
printf("\nBlade angles  \n\n\t Blade angle at the inlet of the impeller: beta 1=%f \n\t Blade angle at the outlet of the impeller: beta 2=%f \n\t Absolute angle at the tip of impeller: alpha 2=%f\n\n",be1,be2,al2)
b1=v1/(2*%pi*(d1/2)*Cf1);........//Breadth of blade at inlet in m
disp(b1*100,"Breadth of the blade at inlet in cm")
v2=(v1*t21*p1)/(n*t1);..............//Discharge at the outlet in m^3/s
b2=v2/(2*%pi*(d2/2)*Cf2);........//Breadth of blade at outlet in m
disp(b2*100,"Breadth of the blade at outlet in cm")


