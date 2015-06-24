
clc
clear
//Input data
D=500//Maximum demand in MW
L=0.7//Load factor 
//1)Steam power plant 2)Hydroelectric power plant 3)Nuclear power plant
CC=[3,4,5]//Capital cost per MW installed in Rs. crore
I=[6,5,5]//Interest in percent
D=[6,4,5]//Depreciation in percent
OP=[30,5,15]//Operating cost (including fuel) per kWh
TD=[2,3,2]//Transmission and distribution cost per kWh
Y=8760//Number of hours in a year of 365 days

//Calculations
//1)Steam power plant
CCX=(CC(1)*D*10^7)//Capital cost in Rs
IX=((I(1)/100)*CCX)//Interest in Rs
DX=((D(1)/100)*CCX)//Depreciation in Rs
AFCX=IX+DX//Annual fixed cost in Rs
EX=(L*D*1000*Y)//Energy generated per year in kWh
RX=(OP(1)+TD(1))//Running cost/kWh in paise
OX=((AFCX/EX)+(RX/100))*100//Overall cost/kWh in paise

//2)Hydroelectric Power plant
CCY=(CC(2)*D*10^7)//Capital cost in Rs
IY=((I(2)/100)*CCY)//Interest in Rs
DY=((D(2)/100)*CCY)//Depreciation in Rs
AFCY=IY+DY//Annual fixed cost in Rs
EY=(L*D*1000*Y)//Energy generated per year in kWh
RY=(OP(2)+TD(2))//Running cost/kWh in paise
OY=((AFCY/EY)+(RY/100))*100//Overall cost/kWh in paise

//3)Nuclear power plant
CCZ=(CC(3)*D*10^7)//Capital cost in Rs
IZ=((I(3)/100)*CCZ)//Interest in Rs
DZ=((D(3)/100)*CCZ)//Depreciation in Rs
AFCZ=IZ+DZ//Annual fixed cost in Rs
EZ=(L*D*1000*Y)//Energy generated per year in kWh
RZ=(OP(3)+TD(3))//Running cost/kWh in paise
OZ=((AFCZ/EZ)+(RZ/100))*100//Overall cost/kWh in paise

//Output
printf('(i)Overall cost per kWh in Steam power plant is %3.0f paise \n(ii)Overall cost per kWh in Hydroelectric power plant is %3.0f paise \n(iii)Overall cost per kWh in Nuclear power plant is %3.0f paise',OX,OY,OZ)
