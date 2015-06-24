Zin=50; //input impedance
Z0=50;
// defining scattering parameters
S11=0;
S22=0;
S21=1/sqrt(2);
S12=1/sqrt(2);
R1=((sqrt(2)-1)/(sqrt(2)+1))*Z0;
R2=R1;
R3=2*sqrt(2)*Z0;
disp(S21,S12,S22,S11,"Scattering parameters");
disp("Ohms",R3,"Ohms",R2,"Ohms",R1,"Resistance values R1,R2,R3:");