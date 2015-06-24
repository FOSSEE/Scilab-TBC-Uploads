//Determine the reduced admittance matrices for prefault, fault and post fault conditions and determine the power angle characterstics for three conditions.
clear 
clc;
Y=[-%i*8.33 0 %i*8.33 0;0 -%i*28.57 0 %i*28.75;%i*8.33 0 -%i*15.67 %i*7.33;0 %i*28.57 %i*7.33 -%i*35.9];
YBB=[-%i*15.67 %i*7.33;%i*7.33 -%i*35.9];
YAA=[-%i*8.33 0;0 -%i*28.57];
YAB=[%i*8.33 0;0 %i*28.57];
YBA=YAB;
Y=YAA-(YAB*(inv(YBB))*YBA);
Y1=([-%i*8.33 0;0 -%i*28.57])-(([0;(%i*28.57/-%i*35.9)]*[0 %i*28.57]));
disp(Y1,"Reduced admittance matrix during fault=");
Yfull=[-%i*8.33 0 %i*8.33 0;0 -%i*28.57 0 %i*28.75;%i*8.33 0 -%i*12.33 %i*4;0 %i*28.57 %i*4 -%i*32.57];
YBB=[-%i*12.33 %i*4;%i*4 -%i*32.57];
Y=YAA-(YAB*(inv(YBB))*YBA);
disp(Y,"(i) Post fault condition ,reduced matrix=");
Y12=Y(1,2);
E1=1.1;
E2=1;
printf("\n Power angle characterstics , Pe= %fsind",abs(Y12)*E1*E2);
