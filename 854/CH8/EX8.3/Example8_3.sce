//clear//
//Caption: Program to verify Stokes theorem
//Example8.3
//page 233
clc;
teta = sym('teta');
phi = sym('phi');
ar = sym('ar');
aphi = sym('aphi');
az = sym('az');
r = sym('r');
curlH = float(36*cos(teta)*cos(phi)*r^2*sin(teta));
curlH_S = integ(curlH,teta);
curlH_S = float(limit(curlH_S,r,4));
curlH_S = float(limit(curlH_S,teta,0.1*%pi))-float(limit(curlH_S,teta,0));
curlH_S = integ(curlH_S,phi);
curlH_S = float(limit(curlH_S,phi,0.3*%pi))-float(limit(curlH_S,phi,0));
disp(curlH_S,'Surface Integral of curlH in Amps =')
Hr = 6*r*sin(phi);
Hphi = 18*r*sin(teta)*cos(phi);
HdL = float(limit(Hphi*r*sin(teta),r,4));
HdL = float(limit(HdL,teta,0.1*%pi));
HdL = float(integ(HdL,phi))
HdL = float(limit(HdL,phi,0.3*%pi));
disp(HdL,'Closed Line Integral of H in Amps =')
//Result
//Surface Integral of curlH in Amps =   22.24922359441324   
// Closed Line Integral of H in Amps =  22.24922359441324   
