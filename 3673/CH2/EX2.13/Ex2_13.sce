//Example 2_13 page no:77
clc
//applying kirchhoff's law
resistance=[0.96,-0.66,0;-0.66,1.16,-0.5;0,-0.5,1.66]
current=[1,5,0]
volt=inv(resistance)'*current'//calculating V1 V2 V3
disp(volt(1),"voltage at node_1 V1 is (in V)")
disp(volt(2),"voltage at node_2 V2 is (in V)")
disp(volt(3),"voltage at node_3 V3 is (in V)")
//values of V1 and V3 varies slightly with text book hence voltages are rounded off in text book calculation
