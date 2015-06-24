clc;
clear;
//Example 6.15
m1_dot=5000     //[kg/h]
ic=0.1      //Initial concentration
fc=0.5      //Final concentration
mf_dot=(fc/ic)*m1_dot       //[kg/h]
mv_dot=mf_dot-m1_dot        //Water evaporated[kg/h]
P=357       //Steam pressure[kN/sq m]
Ts=412       //[K]
H=2732      //[kJ/kg]
lambda=2143     //[kJ/kg]
bpr=18.5            //[K]
T_dash=352+bpr      //[K]
Hf=138      //[kJ/kg]
lambda_s=2143       //[kJ/kg]
Hv=2659     //[kJ/kg]
H1=568      //[kJ/kg]
ms_dot=(mv_dot*Hv+m1_dot*H1-mf_dot*Hf)/lambda_s         //Steam consumption in kg/h
printf("\nSteam consumption is %f kg/h\n",ms_dot);
printf("\nCapacity is %f kg/h\n",mv_dot);
eco=mv_dot/ms_dot       //Economy
printf("\nSteam economy is %f\n",eco);
dT=Ts-T_dash        //[K]
hi=4500     //[W/sq m.K]
ho=9000     //[W/sq m.K]
Do=0.032        //[m]
Di=0.028        //[m]
x1=(Do-Di)/2        //[m]
Dw=(Do-Di)/log(32/28)   //[m]
x2=0.25*10^-3      //[m]
L=2.5       //Length [m]
hio=hi*(Di/Do)        //[W/sq m.K]
printf("\n NOTE:In textbook this value of hio is wrongly calculated as 3975.5..So we will take this\n\n");
hio=3975.5
k1=45       //Tube material in [W/sq m.K]
k2=2.25     //For scale[W/m.K]
Uo=1/(1/ho+1/hio+(x1*Dw)/(k1*Do)+(x2/k2))     //Overall heat transfer coeff in W/sq m.K
Q=ms_dot*lambda_s       //[kJ/h]
Q=Q*1000/3600           //[W]

A=Q/(Uo*dT)             //[sq m]
n=A/(%pi*Do*L)          //from A=n*%pi*Do*L 
printf("\n No. of tubes required is %d",round(n));
