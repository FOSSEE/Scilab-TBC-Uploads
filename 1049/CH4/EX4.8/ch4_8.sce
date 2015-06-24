clc
clear
E_s=16;
R_s=128;
P=.5;
y=poly([P -E_s R_s],'i','coeff');
a=roots(y);
printf('trigger current=%.1f mA',a(1)*1000);
printf('\ntrigger voltage=%.0f V',P/a(1));
