//Ex17.1
Del_V_out=0.25;
V_out=15;
Del_V_in=5;    //All voltages in Volts
line_regulation=((Del_V_out/V_out)/Del_V_in)*100;
disp(line_regulation,'line regulation in %/V')