//Chapter-5, Example 5.1, Page 159
//=============================================================================
clc
clear

//INPUT DATA
t=0.5;//Thickness of slab in m
A=5;//Area of slab in m^2
k=1.2;//Thermal conductivity in W/m.K
a=0.00177;//Thermal diffusivity in m^2/h
//Remperarure distribution as T=60-50x+12x^2+20x^3-15x^4

//CALCULATIONS
//Partial derivative of T w.r.t x is T'=-50+24x+60x^2-60x^3
//Partial derivative of T' w.r.t x is T''=24+120x+180x^2
//Partial derivative of T' w.r.t x is T'''=120-360x
x=0;
y=-50+(24*x)+(60*x^2)-(60*x^3);//Temperature when x=0
Qo=(-k*A*y);//Heat entering the slab in W 
x=0.5;
y=-50+(24*x)+(60*x^2)-(60*x^3);//Temperature when x=0.5
QL=(-k*A*y);//Heat leaving the slab in W
R=(Qo-QL);//Rate of heat storage in W
x=0;
z1=24+(120*x)-(180*x^2);//T' when x=0
p1=(a*z1);//Rate of temperature change at one side of slab in degree C/h
x=0.5;
z2=24+(120*x)-(180*x^2);//T' when x=0.5
p2=(a*z2);//Rate of temperature change at one side of slab in degree C/h
//For the rate of heating or cooling to be maximum, T'''=0
x=(120/360);

//OUTPUT
mprintf('a)i)Heat entering the slab is %i W\n ii)Heat leaving the slab is %i W\nb)Rate of heat storage is %i W\nc)i)Rate of temperature change at one side of slab is %3.4f degree C/h\n ii)Rate of temperature change at other side of slab is %3.4f degree C/h\nd)For the rate of heating or cooling to be maximum x= %3.2f',Qo,QL,R,p1,p2,x)

//=================================END OF PROGRAM==============================
