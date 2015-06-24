//Chapter-12, Example 12.2, Page 504
//=============================================================================
clc
clear

//INPUT DATA
Do=0.0254;//Outer Diameter of heat exchanger tube in m
Di=0.02286;//Inner Diameter of heat exchanger tube in m
k=102;//Thermal conductivity of the tube in W/m.K
hi=5500;//Heat transfer coefficients at the inner side of tube in W/m^2.K
ho=3800;//Heat transfer coefficients at the outer side of tube in W/m^2.K
Rfi=0.0002;//Fouling factor in m^2.W.K
Rfo=0.0002;//Fouling factor in m^2.W.K

//CALCULATIONS
ro=(Do/2);//Outer radius of heat exchanger tube in m
ri=(Di/2);//Inner radius of heat exchanger tube in m
U=(1/((1/ho)+Rfo+((ro/k)*log(ro/ri))+((ro*Rfi)/ri)+(ro/(ri*hi))));//Overall heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Overall heat transfer coefficient is %i W/m^2.K',U)

//=================================END OF PROGRAM==============================

