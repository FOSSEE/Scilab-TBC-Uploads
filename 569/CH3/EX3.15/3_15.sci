//
clc;
disp('When all the components have 0% error then resonant frequency (Hz)')
L=160*10^-6;
C=160*10^-12;
fr=[1/(2*%pi)]*[1/(L*C)]^0.5;
disp(fr)
disp('When all the components have +10% error then resonant frequency (Hz)')
L_new=(160*10^-6)+0.1*L;
C_new=(160*10^-12)+0.1*C;
fr_new=[1/(2*%pi)]*[1/(L_new*C_new)]^0.5;
disp(fr_new)
error=(fr_new-fr)/fr;
disp(error,'error=')
disp('When all the components have -10% error then resonant frequency (Hz)')
L_new=(160*10^-6)-0.1*L;
C_new=(160*10^-12)-0.1*C;
fr_new=[1/(2*%pi)]*[1/(L_new*C_new)]^0.5;
disp(fr_new)
error=(fr_new-fr)/fr;
disp(error,'error=')