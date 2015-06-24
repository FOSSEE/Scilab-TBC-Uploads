//Transport Processes and Seperation Process Principles
//Chapter 14
//Example 14.3-2
//Mechanical-Physical Seperation Processes
//given data
rhowater=998;
muwater=1.005e-3;
rhop=2467;
Dp=1.554e-4;
solid=60;//solid weight percent
liquid=100-solid;//liquid weight percent
E=(liquid/rhowater)/((liquid/rhowater)+(solid/rhop));//volume fraction
rhom=E*rhowater+(1-E)*rhop;
ship=(1/(10^(1.82*(1-E))));
g=9.807;//gravity accelaration
vt=((g*Dp*Dp)*(rhop-rhowater)*(E*E*ship))/(18*muwater);
Re=(Dp*vt*rhom)/((muwater/ship)*E)
if (Re<2100)
    disp(Re)
    disp('Settling is in laminar range')
else
    disp('Settling is not in laminar range')
end
//end
