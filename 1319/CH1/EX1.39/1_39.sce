//To determine the current through all the branches of the given network

clc;
clear;

L=1;
R=1*(10^3);
C=400*(10^-6);
i=2; // 2 cos 50t

w0=1/(sqrt(L*C));

v=i*R; // Voltage across the source

Xl=%i*w0*L; // Inductive reactance
Xc=-%i/(C*w0);// Capacitive reactance

Il=v/Xl; // Inductor current
Ic=v/Xc; // Capacitor Current

//Condition to check if angle is 90 
if(real(Il)==0)
    if(imag(Il)>0)
    tl=atand(%inf);
    else
    tl=-1*atand(%inf);
    end

else
    tl=atand(imag(Il)/real(Il));
end

//Condition to check if angle is 90 
if(real(Ic)==0)
    if(imag(Ic)>0)
    tc=atand(%inf);
    else
    tc=-1*atand(%inf);
    end

else
    tc=atand(imag(Ic)/real(Ic));
end

printf('The Current through the resistor is %g cos(%g)t A\n',i,w0)
printf('The Current through the inductor is %g cos(%gt + (%g)) A\n',abs(Il),w0,tl)
printf('The Current through the capacitor is %g cos(%gt + (%g)) A\n',abs(Ic),w0,tc)
