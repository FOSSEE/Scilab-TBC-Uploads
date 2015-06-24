clc
clear
//Input data
C1=40;//The content of C7H16 in the fuel in percentage
C2=60;//The content of C8H18 in the fuel in percentage
d=0.12;//The diameter of the bore in m
l=0.145;//The length of the bore in m
r=8.5;//Compression ratio 
p=1.1;//Pressure at exhaust stroke in bar
T=720;//The temperature at the exhaust stroke in K
pi=3.141;//Mathematical constant pi
O=32;//The molecular weight of oxygen
N=28;//The molecular weight of nitrogen
C3=100;//Molecular weight of C7H16
C4=114;//The molecular weight of C8H18
R=8314;//Universal gas constant in Nm/kmolK
CO2=44;//Molecular weight of the carbondioxide 
C5=28;//Molecular weight of the carbonmonoxide
H=18;//Molecular weight of the water

//Calculations
N2=100-(12+1.5+2.5);//Percentage of nitrogen in the dry products of combustion
Y=84/3.76;//The number of moles oxygen is supplied
X=13.5/7.6;//Moles of carbon
Z=(22.34-15.25)*2;//The number of moles of hydrogen
Hl=(6.4+10.8)/2;//Number of moles of hydrogen on L.H.S
Hr=7.98;//Number of moles of hydrogen on R.H.S
Hd=Hl-Hr;//Difference of hydrogen moles
A=[[12.58*(O+(3.76*N))]/[((C1/100)*C3)+((C2/100)*C4)]];//The Air/fuel ratio
Vs=(pi/4)*d^2*l;//Swept volume of the cylinder in m^3
Vc=Vs/(r-1);//Clearance volume in m^3
M=[(6.757*CO2)+(0.8446*C5)+(1.408*O)+(47.3*N)+(8.6*H)]/[6.757+0.8446+1.408+47.3+8.6];//Molecular weight of the product
R1=R/M;//Gas constant in J/kgK
m=[(p*10^5)*Vc]/[R1*T];//Mass of the exhaust gases in the clearance space in kg

//Output 
printf('(a)The air/fuel ratio =%3.2f \n (b)The mass of the exhaust gases in the clearance space =%3.7f kg ',A,m)
