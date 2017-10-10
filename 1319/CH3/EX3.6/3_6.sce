//To find Line currents and star connected resistors for the same power

clc;
clear;

// Phase Voltages
Vr=400*(expm(%i*0));
Vy=400*(expm(%i*-2*%pi/3));
Vb=400*(expm(%i*2*%pi/3));

Zry=100; // Impedance between Phase R and Phase Y
Zyb=%i*100;// Impedance between Phase Y and Phase B
Zbr=-%i*100;// Impedance between Phase B and Phase R

Iry=Vr/Zry;
Iyb=Vy/Zyb;
Ibr=Vb/Zbr;

Ir=Iry-Ibr;
Iy=Iyb-Iry;
Ib=Ibr-Iyb;

//Phase angles of the line currents in RYB sequence
tr=atand(imag(Ir)/real(Ir));

if(real(Iy)==0)
ty=atand((imag(Iy)/abs(imag(Iy)))*%inf);
else
ty=atand(imag(Iy)/real(Iy));
end    
if(real(Ib)==0)
tb=atand((imag(Ib)/abs(imag(Ib)))*%inf);
else
tb=atand(imag(Ib)/real(Ib));
end

P=(Iry^2)*Zry; // Power consumed by the circuit ( Arm RY)

Vph=Vr/sqrt(3); // Phase voltage in a star connected system

R=poly([0 1],'R','c');

x=(3*(Vph^2))-(P*R); // Characteristic Eqaution to find R

R=roots(x);

printf('a) The line currents in RYB sequence are : \n')
printf(' R line = %g/_%g A \n',abs(Ir),tr);
printf(' Y line = %g/_%g A \n',abs(Iy),ty);
// Error in text book answer
printf(' B line = %g/_%g A \n \n',abs(Ib),tb);
printf('b) The value of resistors to draw same power as in problem statement a) = %g ohms \n',R(1))

