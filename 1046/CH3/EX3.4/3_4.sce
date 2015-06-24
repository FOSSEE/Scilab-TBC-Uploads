clc;
clear;
//Example 3.4
//calculate the thickness of insulation
//and the rate of heat loss per meter length of pipe.
//Given
id=97*10^-3         //m,internal diameter of steam pipe
od=114*10^-3        //m,outer diameter of steam pipe
pr=30               //bar, absolute pressure os saturated steam
Ti=234                //C, temp. at 30 bar absolute pressure
Ts=55               //C, skin temp.
To=30               //C, ambient temp.
kc=0.1              //W/m C, thermal conductivity of wool
kw=43               //W/m C, thermal conductivity of pipe
h=8                 //W/m^2 C, external air film coefficient 
L=1                 //m, assume length
//Calculation
ri=id/2             //m, 
r1=(114*10^-3)/2        //m,outer radius of steam pipe

//thermal resistance of insulation
//Ri=log(ro/r1)/(2*%pi*L*kc)
//Thermal resistance of pipe wall
Rp=log(r1/ri)/(2*%pi*L*kw)
//RT=Ri+Rp
DF=Ti-Ts            //C, driving force
//At steady state the rate of heat flow through the insulation
// and the outer air film are equ

//by trial and error method :
deff('[x]=f(ro)','x=(Ti-Ts)/(log(ro/r1)/kc+log(r1/ri)/kw)-(h*ro*(Ts-To))')
ro=fsolve(0.1,f)
th=ro-r1        //m, required thickness of insulation
Q=2*%pi*ro*h*L*(Ts-To)
printf("The rate of heat loss is %f W,",Q)
