//Chapter-10, Example 10.16, Page 430
//=============================================================================
clc
clear

//INPUT DATA
e=0.8;//Emissivity of brick wall
D1=[6,4];//Width and Height in m
L=0.04;//Distance from the wall in m
D2=[0.2,0.2];//Dimensions of the furnace wall in m
D3=[1,1];//Dimensions at lower and left of the centre of the wall in m
T=[1523+273,37+273];//Furnace temperature and wall temperature in degree C

//CALCULATIONS
F12=0.033;//Shape factor from Fig.10.3 on page no. 409
F13=0.05;//Shape factor from Fig.10.3 on page no. 409
F14=0.12;//Shape factor from Fig.10.3 on page no. 409
F15=0.08;//Shape factor from Fig.10.3 on page no. 409
Fow=(F12+F13+F14+F15);//Shape factor between opening and wall
Q=(e*L*Fow*5.67*10^-8*(T(1)^4-T(2)^4))/1000;//Net radiation exchange in kW

//OUTPUT
mprintf('Net radiation exchange between the opening and the wall is %3.1f kW',Q)

//=================================END OF PROGRAM==============================
