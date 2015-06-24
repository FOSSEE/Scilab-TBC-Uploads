//Chapter-3, Example 3.12, Page 67
//=============================================================================
clc
clear

//INPUT DATA
L1=0.125;//Thickness of fireclay layer in m
L2=0.5;//Thickness of red brick layer in m
T=[1100,50];//Temperatures at inside and outside the furnaces in degree C
k1=0.533;//Thermal conductivity of fireclay in W/m.K
k2=0.7;//Thermal conductivity of red brick in W/m.K

//CALCULATIONS
R1=(L1/k1);//Resistance of fireclay per unit area in K/W
R2=(L2/k2);//Resistance of red brick per unit area in K/W
R=R1+R2;//Total resistance in K/W
q=(T(1)-T(2))/R;//Heat transfer in W/m^2
T2= T(1)-(q*R1);//Temperature in degree C
T3=T(2)+(q*R2*0.5);//Temperature at the interface between the two layers in degree C
km=0.113+(0.00023*((T2+T3)/2));//Mean thermal conductivity in W/m.K
x=((T2-T3)/q)*km;//Thickness of diatomite in m

//OUTPUT
mprintf('Amount of heat loss is %3.1f W/m^2 \n Thickness of diatomite is %3.4f m',q,x )

//=================================END OF PROGRAM==============================
