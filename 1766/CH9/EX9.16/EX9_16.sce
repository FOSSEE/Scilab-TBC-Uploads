clc;funcprot(0);//Example 9.16
//Initilisation of Variables
l=3,b=3,h=3;....//Sides of cube in m
T1=300;....//Uniform temparature of floor in K
T2=200;....//Temparature of wall & ceiling in K
e1=0.9;....//Emissivity of floor
e2=0.6;....//Emissivity of all ceiling 
e3=0.5;....//Emissivity of all side walls 
R=5.67*10^-8;.....//Stefens boltsman constant 
F12=0.2;....//shape factor of the floor and ceiling
//calculations
F13=1-F12;....//Shape facteor of ceiling and sidewalls 
A1=l*b;....//Area of floor in m^2
A2=b*h;.....//Area of Ceiling m^2
A3=h*l;....//Area of sidewalls in m^2
Eb1=(R*T1^4);....//Emissive power of ceiling as per stefen boltzman law in W/m^2
Eb2=(R*T2^4);   ....//Emissive power of wall as per stefen boltzman law in W/m^2
Eb3=Eb2;....//Emissive power of wall as per stefen boltzman law in W/m^2
R1=(1-e1)/(A1*e1);.....//Resistance of floor in sq m
R2=(1-e2)/(A2*e2);.....//Resistance of ceiling in sq m
R3=(1-e3)/(A3*e3);.....//Resistance of side walls in sq m
R12=1/(A1*F12);....//Resistance of ceiling to floor in sq m
R23=1/(A1*F13);....//Resistance of ceiling to sidewalls in sq m
R13=1/(A1*F13);....//Resistance of floor to side walls in sq m
Q12=(Eb1-Eb2)/(R1+R12+R2);.....//Rate of heat transfer from ceiling to floor and walls in kW
Q13=(Eb1-Eb2)/(R1+R13+R3);.....//Rate of heat transfer from ceiling to floor and walls in kW
disp(Q12,"Rate of heat transfer to ceiling in kW:")
disp(Q13,"Rate of heat transfer to sidewalls in kW:")
Rtoti=R1+(1/(((1/R12)+(1/(R13+R23)))))+R2;....//Equalent resistance
Q13i=(Eb1-Eb2)/Rtoti;......//Heat transfer through cieling in W
disp(Q13i,"Heat transfer through side walls if they are insulated in W")
a1=((1/R1)+(1/R12)+(1/R13));...//
c1=((Eb1/R1)+(Eb3/R13));...//
a2=1/R12;...//
b1=-1/R12;...//
b2=-((1/R2)+(1/R23)+(1/R12));...//
c2=-(Eb2/R2)-(Eb3/R23);...//
A=[a1,b1;a2,b2];...//
C=[c1;c2];....//
disp(inv(A)*C,"the radiocities when the walls are insulated in W/m^2")
