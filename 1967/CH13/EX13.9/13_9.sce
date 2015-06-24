clc
//initialisation of variables
clear
a= -15.84 
b= 22.84*10^-3
c= -80.97*10^-7 
T= 25 //C
H1= -48.1 //kcal
H2= -26.4
dS= 53.09
T1= 327 //C
r1= 0.58
r2= 1.1
r3= 1.13
//CALCULATIONS
dH= (H1-H2)*1000-a*(273.2+T)-0.5*b*(273.2+T)^2-0.33*c*(273.2+T)^3
dF= (H1-H2)*1000+(273.2+T)*dS
I= (dF-dH+a*(273.2+T)*log(273.2+T)+0.5*b*(273.2+T)^2+0.166*c*(273.2+T)^3)/(273.2+T)
dF1= (dH-a*(273+T1)*log(273+T1)-0.5*b*(273+T1)^2-0.166*c*(273+T1)^3)+I*(273+T1)
Kf= 10^(-dF1/(4.576*(273+T1)))
Jr= r1/(r2^2*r3)
Kp= Kf/Jr
//RESULTS
printf ('heat of formation = %.f cal',dH)
printf ('\n Entropy = %.f cal',dF)
printf ('\n Inertia = %.f gm cm^2',I)
printf ('\n Entropy = %.f cal',dF1)
printf ('\n Kf = %.1e ',Kf)
printf ('\n Kp = %.1e ',Kp)
