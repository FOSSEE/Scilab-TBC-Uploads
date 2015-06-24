//Ex2.9
V_NL=5.18    //No load output voltage
V_FL=5.15    //Full load output voltage
load_reg=((V_NL-V_FL)/V_FL)*100    //In percentage
disp('load regulation percent= ')
disp(load_reg)