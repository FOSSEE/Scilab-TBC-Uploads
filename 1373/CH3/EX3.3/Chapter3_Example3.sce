//Chapter-3, Example 3.3, Page 51
//=============================================================================
clc
clear

Di=0.1;//Inner diameter of hollow sphere in m
Do=0.3;//Outer diameter of hollow sphere in m
k=50;//Thermal conductivity in W/m.K
T=[300,100];//Inner and outer surface temperature in degree C

//CALCULATIONS
ro=(Do/2);//Outer radius of hollow sphere in m
ri=(Di/2);//Inner radius of hollow sphere in m
Q=((4*3.14*ro*ri*k*(T(1)-T(2)))/(ro-ri))/1000;//Heat transfer rate in W
r=ri+(0.25*(ro-ri));//The value at one-fourth way of te inner and outer surfaces in m
T=((ro*(r-ri)*(T(2)-T(1)))/(r*(ro-ri)))+T(1);//Temperature at a point a quarter of the way between the inner and outer surfaces in degree C

//OUTPUT
mprintf('Heat flow rate through the sphere is %3.2f kW \nTemperature at a point a quarter of the way between the inner and outer surfaces is %i degree C',Q,T)

//=================================END OF PROGRAM==============================
