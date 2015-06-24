//Exa 4.4
clc;
clear;
close;
disp("The output can be obtained using superposition theorem, as");
disp("Vo=Voa+Vob");
// case (i) when Vb=0;
disp("case (i) when Vb=0 the given circuit becomes an inverting amplifier to provide an output as");
disp("Voa=-100Kohm*Va/R1=-2*Va ");
disp("It gives R1=50 Kohm");
// case (ii) when Va=0;
disp("case (ii) when Va=0 the given circuit becomes an non-inverting amplifier to provide an output as");
disp("Vob=(1+100Kohm/R1)*V1 where V1=R3*Vb/(R2+R3)");
disp("Vob=(1+100Kohm/R1)*V1*(R3*Vb/(R2+R3))=Vb ")
disp("Putting R1=R2=50 Kohm, we get R3=25 Kohm");