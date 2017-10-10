//Example 1_9 page no:100
clc;
//given
T = 1400;
Tl = 1900;
k = 7.85/1400;
motor_rpm = 750;
//calculating load torque
Tm = Tl - (Tl/1.53);
slip = k * 660;
speed = motor_rpm - 35.2;
disp("After 5s");
disp(Tm,"the torque at the end of 5s is (in Nm)");
disp(slip,"the slip is (in rad/s)");
disp(speed,"the speed is(rpm)");
Tm = (Tl)-( Tl - 0)*exp(-0.085*10);
disp("After 10s");
disp(Tm,"the torque at the end of 10s is (in Nm)");
slip = k * 1088;
speed = motor_rpm - 58;
disp(slip,"the slip is (in rad/s)");
disp(speed,"the speed is(rpm)");
T_m = 1088;
Tm = 280 + ( T_m - 280)*exp(-0.085*15);
disp("After 15s");
disp(Tm,"the torque at the end of 15s is (in Nm)");
slip = k * Tm;
speed = motor_rpm - 27;
disp(slip,"the slip is (in rad/s)");
disp(speed,"the speed is(rpm)");
Tm = 280 + ( 1088 - 280)*exp(-0.085*30);
slip = k * 343;
speed = motor_rpm - 18.4;
disp("After 30s");
disp(Tm,"the torque at the end of 30s is (in Nm)");
disp(slip,"the slip is (in rad/s)");
disp(speed,"the speed is(rpm)");
Tm = Tl - (Tl - 280)*exp(-0.085*10)
slip = k * 1235;
speed = motor_rpm - 66;
disp("At the end of this period");
disp(Tm,"the torque at the end of this period is (in Nm)");
disp(slip,"the slip is (in rad/s)");
disp(speed,"the speed is(rpm)");
Tm = 280 + ( 1235 - 280)*exp(-0.085*30);
slip = k * Tm;
speed = motor_rpm - 19;
disp("At the end of second off-peak period");
disp(Tm,"the torque at the end of this period is (in Nm)");
disp(slip,"the slip is (in rad/s)");
disp(speed,"the speed is(rpm)");
//the result vary slightly hence values are rounded off in text book
