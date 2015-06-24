clc;
p=1;   //power output in hp
p=1*746 //power output in Watt using 1hp = 746Watt 
F=300; //Force in Newton
v=p/F; //calculating v in m/sec using P=F*v
disp(v,"Velocity in m/sec = ");  //displaying velocity in m/sec