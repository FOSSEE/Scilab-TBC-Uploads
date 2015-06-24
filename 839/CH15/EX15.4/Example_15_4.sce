//clear//
clear;
clc;

//Example 15.4
//Given
N = 28;
xF = 0.5/12; // [ft]
yF = 0.035/12; //[ft]
km = 26; // [Btu/ft-h-F]
AT = 2.830; //[ft^2/ft]
Ab = 0.416; //[ft^2/ft]
hi = 1500; //[Btu/ft^2-h-F]
G = 5000; //[lb/h-ft^2]
Tavg = 130; //[F]
Tw = 250; //[F]
mu = 0.046; //[lb/ft-h], from Appendix 8 
Cp = 0.25; //[Btu/lb-F], from Appendix 15
k = 0.0162; //[Btu/ft-h-F], from Appendix 12
ID_shell = 3.068/12; //[ft], from Appendix 5
OD_pipe = 1.9/12; //[ft], from Appendix 5
//cross sectional area of shell space
Ac = %pi/4*(ID_shell^2-OD_pipe^2)-N*xF*yF //[ft^2]
//The perimeter of air space
Ap = %pi*ID_shell+AT; //[ft]
//hydraulic radius
rh = Ac/Ap; //[ft]
//equivalent diameter
De = 4*rh; //[ft]
//Reynolds Number
Nre = De*h/mu
//In computing mu_w the resistance of the wall and the steam film
//are considered negligible, so
mu_w = 0.0528; //[lb/ft-h]
Npr = mu*Cp/k
//Using Fig. 15.17, the heat transfer factor is
jh = 0.0031;
ho = jh*Cp*G*(mu/mu_w)^0.14/Npr^(2/3); //[Btu/ft^2-h-F]

//For rectangular fins, disreagrding the contribution of the ends of the fins to 
//the perimeter, Lp = 2L and S = Lyf, where yf is the fin thickness and L is the 
//length of the fin. Then, from Eq.(15.11)
aFxF = xF*sqrt(2*ho/(km*yF));
//From Fig. 15.16
netaF = 0.93;
Dt = 1.610/12; //[ft], from Appendix 5
DLbar = (OD_pipe-Dt)/log(OD_pipe/Dt); //[ft]
Ai = %pi*Dt*1.0; //[ft^2]
AF = AT-Ab; //[ft^2/ft] 
xw = (OD_pipe-Dt)/2; //[ft]

//Using Eq.(15.10), the overall coefficient 
Ut =  1/(Ai/(ho*(netaF*AF+Ab))+(xw*Dt/(km*DLbar))+1/hi);//[Btu/ft^2-h-F]
disp('Btu/ft^2-h-F',Ut,'The overall heat transfer coefficent is')
