// Compute the prefault, faulted and post fault reduced Y matrices
clear 
clc;
y=[-%i*5 0 %i*5 ; 0 -%i*5 %i*5;%i*5 %i*5 -%i*10 ];
YAA=[-%i*5 0;0 -%i*5];
YAB=[%i*5;%i*5];
YBA=[%i*5 %i*5];
YBB=[%i*10];
Y=YAA-YAB*(inv(YBB))*YBA;
Yfull=[-%i*5 0 %i*5;0 -%i*7.5 %i*2.5;%i*5 %i*2.5 -%i*12.5];
disp(Yfull,"(i)faulted case, full matrix(admittance)=");
Y=[-%i*3 %i*1;%i*1 -%i*7];
disp(Y,"(ii)Pre-fault case, reduced admittance matrix=");
Y=[-%i*5 0 %i*5;0 -%i*2.5 %i*2.5;%i*5 %i*2.5 -%i*7.5];
disp(Y,"(iii)Post-fault case, full matrix(admittance)=");
Y=[-%i*1.667 %i*1.667;%i*1.667 -%i*1.667];
disp(Y," reduced admittance matrix=");
