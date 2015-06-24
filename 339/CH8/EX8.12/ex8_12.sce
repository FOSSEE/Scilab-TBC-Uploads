Ic=10*10^-3; //Collector current
Vce=3;
Vcc=5;
beta=100; //current gain
Vbe=0.8;
I1=Ic+Ic/beta;
R1=(Vcc-Vce)/I1;
R2=(Vce-Vbe)/(Ic/beta);
Vx=1.5;
R3=(Vx-Vbe)/(Ic/beta);
Ix=10*(Ic/beta);
R11=(Vx/Ix);
R22=(Vcc-Vx)/(Ix+(Ic/beta));
R4=(Vcc-Vce)/Ic;
disp("Amperes",I1,"I1","Ohms",R1,"R1","Ohms",R2,"R2","Ohms",R3,"R3","Ohms",R11,"R11","Ohms",R22,"R22","Ohms",R4,"R4");