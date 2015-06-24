clc;
warning("off");
printf("\n\n example10.7 - pg422");
// given
L=300;  //[m] - length of pipe
d=0.06;  //[m] - inside diameter
p=1000;  //[kg/m^3] - density
mu=1*10^-3;  //[kg/m*sec] - viscosity
Nre=[10^4 10^5];
U=(Nre*mu)/(d*p);
velocityhead=(U^2)/2;
N=(L/d)/45;  // no of velocity heads
deltap=p*N*(velocityhead);
for i=1:2
    disp(Nre(i),"Nre=");
    printf("\n\n velocity head =%f m^2/sec^2",velocityhead(i));
    printf("\n\n -deltap = %f kPa = %f psi",deltap(i)*10^-3,deltap(i)*1.453*10^-4);
end




