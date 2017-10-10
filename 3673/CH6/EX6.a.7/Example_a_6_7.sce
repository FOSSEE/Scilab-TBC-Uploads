//Example_a_6_7 page no:237
clc;
I1mag=50;
I1ang=10;
I2mag=20;
I2ang=30;
Z1mag=100/50;
Z1ang=15-10;
Z1real=Z1mag*cosd(Z1ang);
Z1imag=Z1mag*sind(Z1ang);
Z1=Z1real+(%i*Z1imag);
Z2mag=100/20;
Z2ang=15-30;
Z2real=Z2mag*cosd(Z2ang);
Z2imag=Z2mag*sind(Z2ang);
Z2=Z2real+(%i*Z2imag);
Pa1=I1mag^2*Z1mag;
Pt2=I2mag^2*real(Z2);
Pr1=I1mag^2*imag(Z1);
disp(Pr1,"the reactive power in branch is (in VAR)");
disp(Pa1,"apparent power in branch Z1 is (in VA)");
disp(Pt2,"the true power in branch Z2 is (in W)");
Pr2=I2mag^2*-imag(Z2);//only reactive power is taken, negative sign is used to convert negative to positive
Pa2=I2mag^2*Z2mag;
disp(Pr2,"the reactive power in branch is (in VAR)");
disp(Pa2,"the apparent power in branch is (in VA)");
Z=((Z1mag*Z2mag)/(Z1+Z2));
theta=0.71;
pf=cosd(theta);
disp(pf,"the power factor of the total circuit is (leading)");
//reactive power varies slightly hence textbook values are rounded off
