//Example 2_15 page no:81
clc
//applying kirchoff law to node 1
R5=5//resistance in ohm
V=10//source voltge
resistance=[0.83,-0.5,0;-0.5,1.5,0.7;0.01,1,-1]
current=[10,2,20]
volt=inv(resistance)'*current'//calculating V1 V2 V3
I3=(volt(3,1)-8.8)/R5
disp(I3,"current flowing through 5 ohm resistor is (in ampere)")
disp("negative sign indicate flow of current in opposite direction")
