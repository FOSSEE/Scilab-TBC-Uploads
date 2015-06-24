clc;
clear;
mark_f=59;//MArk Frequency in Hz
space_f=61; //space frequency in Hz
input_rate=5;//input rate in kbps

Peak_Frq_Dev=abs((mark_f-space_f)/2);
Bw=2*(Peak_Frq_Dev+input_rate)*10^(3);
baud=input_rate*10^(3);

disp(Peak_Frq_Dev,"Peak Frequency Deviation (in KHz) =");
disp(Bw,"Minimum BW (in Hz)=");
disp(baud,"Baud=");
