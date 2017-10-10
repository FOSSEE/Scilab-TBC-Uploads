//Example 1_4 page no:47
clc;
//given
//In text book the answers are rounded off so result vary slightly with text book
power = 15*1000;//in W
I = 60;
rpm = 450;
E = 322;
I = 41.2;
full_load_torque = (power*I)/(2*%pi*rpm);
output = E*I;
disp(output,"the output from the machine is (in W)");
mac_input = (2*%pi*rpm*318)/60;
disp(mac_input,"the mechanical input to the machine from the load if it were running at 450 rev/min would be(in W)");
//rpm at 500;
rpm = 500;
mac_input = (2*%pi*rpm*318)/60;
disp(mac_input,"the mechanical input to the machine at 500 rev/min is (in W)");
