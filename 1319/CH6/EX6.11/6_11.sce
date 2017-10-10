//Swinburne test on a dc shunt motor

clc;
clear;

V=500;
I=5;
Rf=250;
Ra=0.5;

P=V*I;
If=V/Rf;

Ia=I-If;

Pfc=(If^2)*Rf;// Field Copper Loss

Pac=(Ia^2)*Ra; // Armature Copper Loss

Pil=P-Pfc-Pac;// Iron loss

// Generator

Vg=500;
Ig=100;

Pog=Vg*Ig; // Power Output

Iag=Ig+If; //Armature current

Pgac=(Iag^2)*Ra; // Armature Copper loss

slg=0.01*Pog;//stray loss

Pgtl=Pgac+Pfc+slg+Pil; // Total losses

effg=Pog*100/(Pog+Pgtl);

// Motor

Vm=500;
Im=100;

Pim=Vm*Im; // Power input to the motor

Iam=Ig-If; // Armature current

Pmac=(Iam^2)*Ra; // Armature Copper Loss

Pom=Pim-Pmac-Pil-Pfc;// Ouput of the motor
slm=0.01*Pom;// Stray loss

Pmtl=Pmac+Pil+Pfc+slm; // Total loss of the motor

effm=(Pom-slm)*100/(Pim);


printf('i) The Efficiency of the machine as a generator delivering 100A at 500V = %g percent \n',effg)

printf('ii) The Efficiency of the machine as a motor having a line current 100A at 500V = %g percent \n',effm)
 



