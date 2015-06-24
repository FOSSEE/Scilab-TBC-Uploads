//Ex17.2
V_NL=12;    //No load output voltage in Volts
V_FL=11.9;    //Full load output voltage in Volts
I_F=10;    //Full load current in milli-Amperes
load_regulation=((V_NL-V_FL)/V_FL)*100;
load_reg=load_regulation/I_F;
disp('load regulation as percentage change from no load to full load')
disp(load_regulation)
disp('load regulation as percentage change per milliampere')
disp(load_reg);