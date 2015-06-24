//Chapter-3, Example 3.18, Page 77
//=============================================================================
clc
clear

//INPUT DATA
Di=0.1;//I.D of a steam pipe in m
Do=0.25;//I.D of a steam pipe in m
k=1;//Thermal conductivity of insulating material in W/m.K
T=[200,20];//Steam temperature and ambient temperatures in degree C
h=8;//Convective heat transfer coefficient between the insulation surface and air in W/m^2.K

//CALCULATIONS
ri=(Di/2);//Inner Radius of steam pipe in m
ro=(Do/2);//Outer Radius of steam pipe in m
rc=(k/h)*100;//Critical radius of insulation in cm
q=((T(1)-T(2))/((log(ro/ri)/(2*3.14*k))+(1/(2*3.14*ro*h))));//Heat loss per metre of pipe at critical radius in W/m
Ro=(q/(2*3.14*ro*h))+T(2);//Outer surface temperature in degree C

//OUTPUT
mprintf('Heat loss per metre of pipe at critical radius is %i W/m \n Outer surface temperature is %3.2f degree C',q,Ro)

//=================================END OF PROGRAM==============================
