//Chapter-10, Example 10.23, Page 447
//=============================================================================
clc
clear

//INPUT DATA
T=[800+273,300+273];//Temperatures of the plates in K
e=[0.3,0.5];//Emissivities of the plates
e3=0.05;//Emissivity of aluminium

//CALCULATIONS
q=((5.67*10^-8*(T(1)^4-T(2)^4))/((1/e(1))+(1/e(2))-1))/1000;//Heat transfer without the shield in kW/m^2
R1=(1-e(1))/e(1);//Resistance in 1
R2=(1-e(2))/e(2);//Resistance in 2
R3=(1-e3)/e3;//Resistance in 3
R=(R1+(2*R2)+(2*R3));//Total resistance 
q1=((5.67*10^-8*(T(1)^4-T(2)^4))/R)/1000;//Heat transfer with shield in kW/m^2
r=((q-q1)*100)/q;//Reduction in heat transfer 
X1=((1/e3)+(1/e(2))-1);//X1 for tempearture T3
X2=((1/e(1))+(1/e3)-1);//X1 for tempearture T3
T3=(((X1*T(1)^4)+(X2*T(2)^4))/(X2+X1))^0.25;//Temperature of the sheild in K
T3c=T3-273;//Temperature of the sheild in degree C

//OUTPUT
mprintf('Percentage reduction in heat transfer is %3.0f percent \nTemperature of the sheild is %3.2f degree C',r,T3c)

//=================================END OF PROGRAM==============================
