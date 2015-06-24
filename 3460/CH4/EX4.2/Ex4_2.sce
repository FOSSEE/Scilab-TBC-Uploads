clc;
clear all;
//part-a
delta= 3.6 //KHz
fi=750 //Khz
//part-a 
//when intelligrnce amplitude doubles, deviation doubles.
new_delta=2*delta //Khz

disp("Part A")
disp(new_delta,"when intelligrnce amplitude doubles, deviation doubles delta =");
//part-b 
//frequency is reduced by two-thirds. but the deviation os unaffected by frequency changes.
delta=3.6 //Khz
new_fi=0.25 //Khz

disp("Part B")
disp(delta,'frequency is reduced by two-thirds. but the deviation os unaffected by frequency changes so, delta=');
//part-c original condition
mf=delta/fi;  // for original condition

disp("Part c")
disp(mf,'mf for original condition=');
mf=new_delta/fi; // for part-a
disp(mf,'mf for condition a =');
mf=delta/fi;
disp(mf,'mf for condition b =');

