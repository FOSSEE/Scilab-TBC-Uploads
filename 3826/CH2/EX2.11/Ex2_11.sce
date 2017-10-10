//Example 2_11 page no:141
clc;  
//given
speed1 = 37.5;//in km/h
speed2 = 48.2;//in km/h
tractive_effort = 4670;//in N
flux_speed = 100 * speed1/speed2;
//if current is reduced by 30% then new flux will from the magnetisation curve be 64%
flux = 64;//in percentage
speed = speed2*flux_speed/flux;
disp(speed,"the speed at new flux will be(in km/h)");
tractive_effort = tractive_effort * flux/70.7;//calculating new tractive effort
disp(tractive_effort,"the new tractive effort at 100A will be(in N)");
//the new tractive effort calculated is wrong in textbook. It is a calculation error

