//ex7.3
I_DSS=9*10^-3;
V_GS_off=-8;
V_GS=0;
I_D=value_of_I_D(9*10^-3,0,-8);
disp(I_D,'Value of I_D for V_GS=0V')
I_D=value_of_I_D(9*10^-3,-1,-8);
disp(I_D,'Value of I_D for V_GS=-1V')
I_D=value_of_I_D(9*10^-3,-4,-8);
disp(I_D,'Value of I_D for V_GS=-4V')