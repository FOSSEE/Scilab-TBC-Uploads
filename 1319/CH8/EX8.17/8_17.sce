//To determine parameters of 4 pole induction motor considering circuit parameters

clc;
clear;

R1=0.5;
R2=0.35;
X1=1.2;
X2=X1;
Xm=25;
f=50;
p=4;

Pd=25*735.5; // Power Developed
Prl=800;// Rotational Losses
V=400;
Vph=V/sqrt(3);

Ns=120*f/p;
s=2.5/100;
Nr=(1-s)*Ns;
rf=s*f; // Rotor Frequency

Z1=R1+(%i*X1);
Z2=(R2/s)+(%i*X2);
Zm=%i*Xm;

Z2m=(Zm*Z2)/(Zm+Z2);

Zeff=Z1+Z2m; // Effective Impedance

Is= Vph/Zeff; // Stator Current

Psc= 3*(abs(Is)^2)*R1; // Copper Loss in the Stator
Ztheta= atand(imag(Zeff)/real(Zeff)); // Phase angle of impedance
Ctheta= atand(imag(Is)/real(Is)); // Phase angle of current

pf= cosd(Ctheta);// Lagging Power Factor 
Ir=Is*(Zm/(Zm+Z2));// Rotor Current

Prc= 3*(abs(Ir)^2)*R2; // Rotor Copper Loss

Pim= sqrt(3)*V*abs(Is)*cosd(Ctheta); // Power input to the motor
Pom= Pim-Prc-Psc-Prl; // Power Output to the motor

eff=Pom*100/Pim; // Efficiency

printf('For a rotor slip of 2.5 percent at rated voltage and frequency \n');
printf('i) The motor speed = %g rpm \n',Nr)
printf('ii) The stator Current = %g /_%g A \n',abs(Is),Ctheta)
printf('iii) The p.f = %g lagging \n',pf)
printf('iv) The efficiency = %g percent \n',eff)

