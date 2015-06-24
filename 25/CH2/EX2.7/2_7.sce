// example:-2.7.page no.-50.
// program to plot the reflection coefficients for parallel and perpendicular polarized plane waves incident from free space on to a dielectric region with Er=2.55,versus incidence angle.
Er=2.55;  // relaitve permittivity of dielectric medium.
N1=377;  // intrinsic impedence
N2=N1/sqrt(Er);  // intrinsic impedence of dielectric medium.
xb=asin(sqrt(1/(1+1/2.55)));  // brewster angle valid only in case of parallel polarization.
xt=acos(sqrt(1-(1/Er)^2*sin(xb))); // angle of transmission.
xi=[0:0.01:%pi/2];  // incidence angle.
// for parallel polarization
N2=N2*cos(xt);   
N1=N1*cos(xi);
Tpar=(N2-N1)./(N2+N1);
w=abs(Tpar);
// result
subplot(1,2,1)
xtitle("parallel polarization","xi(incidence angle)","Tpar(reflection coefficient)")
plot2d(xi,w,style=3,rect=[0,0,%pi/2,1])
// for perpendicular polarization.     //NOTE:- in case of this polarization.there is no brewster angle.
xt=acos(sqrt(1-(1/Er)^2*sin(xi)));
n1=377.*cos(xt);
n2=(377/sqrt(Er)).*cos(xi);
Tper=(n2-n1)./(n1+n2);
z=abs(Tper);
//result
subplot(1,2,2)
xtitle("perpendicular polarization","xi(inxidence angle)","Tper(reflection coefficient)")
plot2d(xi,z,style=2,rect=[0,0,%pi/2,1])