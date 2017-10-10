//Example 14.2
//z Parameter by  the Direct Method
// From figure 14.8(b)
// We set i_2=0
// v_1=(10+50)*i_1 ---equation(1)
// v_x=50*i_1 ---equation(2)
// v_2=v_x-3*v_x=-2*50*i_1---equation(3)
// z_11=v_1/i_1 and z_21=v_2/i_1
z_11=60;
z_21=-100;
// Now we set i_1=0
//v_1=v_x=50*i_2
//v_2=v_x-3*v_x=-2*50*i_2;  thus
z_12=50;
z_22=-100;
Z=[z_11,z_12;z_21,z_22];
disp(Z,"Z-parameter by direct method=")
