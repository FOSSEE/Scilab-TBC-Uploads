clc
//ex16.1
V_rms=440;
P_o_fl=5*746;      //full-load rated output power
I_rms_fl=6.8;      //full-load line current
PF_fl=0.78;      //full-load power factor
n_fl=1150;      //full-load speed in rpm
I_rms_nl=1.2;      //no-load line current
PF_nl=0.3;      //no-load power factor
n_nl=1195;      //no-load speed in rpm
P_in_fl=sqrt(3)*V_rms*I_rms_fl*PF_fl;      //full-load input power
P_loss_fl=P_in_fl-P_o_fl;      //full-load power loss
eff_fl=(P_o_fl/P_in_fl)*100;      //full-load efficiency
P_in_nl=sqrt(3)*V_rms*I_rms_nl*PF_nl;      //no-load input power
P_o_nl=0;      //no-load output power
eff_nl=0;      //no-load efficiency('0' as P_o_nl=0)
SR=(n_nl-n_fl)*100/n_fl;      //speed regulation
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(P_loss_fl,'Power loss with full-load in watts')
disp(eff_fl,'Efficiency with full-load')
disp(P_in_nl,'Input power with no-load in watts')
disp(SR,'speed regulation percentage for the motor')
