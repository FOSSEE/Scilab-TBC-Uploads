//Chapter-3, Example 3.16, Page 73
//=============================================================================
clc
clear

//INPUT DATA
D1=0.1;//O.D of the pipe in m
P=1373;//Pressure of saturated steam in kPa
D2=0.2;//Diameter of magnesia in m
k1=0.07;//Thermal conductivity of magnesia in W/m.K
k2=0.08;//Thermal conductivity of asbestos in W/m.K
D3=0.25;//Diameter of asbestos in m
T3=20;//Temerature under the canvas in degree C
t=12;//Time for condensation in hours
l=150;//Lemgth of pipe in m
T1=194.14;//Saturation temperature of steam in degree C from Table A.6 (Appendix A) at 1373 kPa on page no. 643
hfg=1963.15;//Latent heat of steam in kJ/kg from Table A.6 (Appendix A) at 1373 kPa on page no. 643

//CALCULATIONS
r1=(D1/2);//Radius of the pipe in m
r2=(D2/2);//Radius of magnesia in m
r3=(D3/2);//Radius of asbestos in m
Q=(((2*3.14*l*(T1-T3))/((log(r2/r1)/k1)+(log(r3/r2)/k2)))*(3600/1000));//Heat transfer rate in kJ/h
m=(Q/hfg);//Mass of steam condensed per hour
m1=(m*t);//Mass of steam condensed in 12 hours

//OUTPUT
mprintf('Mass of steam condensed in 12 hours is %3.2f kg',m1)

//=================================END OF PROGRAM==============================
