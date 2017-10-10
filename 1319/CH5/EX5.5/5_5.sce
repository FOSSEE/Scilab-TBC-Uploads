//Voltage regulation at 0.8 pf lagging

clc;
clear;

E1=1100;
E2=110;

P=5*(10^3);

I=P/E1; // Primary full load current

I2=P/E2;// Secondary full load current

V=33;

pf=0.8; // Power Factor lagging, so the angle is positive

theta=acosd(pf);// Power factor angle

Pc=85;

R=Pc/(I^2);

Z=V/I;

V1=E1;

X=sqrt((Z^2)-(R^2));

// Using equation 5.22 to determine V2

V2=poly([0 1],'V2','c');

x=(V2^2)+(2*V2*I*R*pf)+(2*V2*I*X*sind(theta))+((I^2)*((R^2)+(X^2)))-(V1^2);

r=roots(x);

a1=sqrt(r(1));
a2=sqrt(r(2));

if(imag(a1))
    V2=r(2);
else
    if(imag(a2))
        V2=r(1);
    else
        disp('Error')
    end
end

reg=(V1-V2)/V2; // Voltage regulation

regper=reg*100;// Voltage regulation percent

disp(x,'The characteristic equation to find V2 equated to zero is')

disp(regper,'The percentage voltage regulation for a load at 0.8 pf lagging is')
    


