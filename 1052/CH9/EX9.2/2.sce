clc;
//Example 9.2
//page no 87
printf("Example 9.2 page no 87\n\n");
//a horizontal line carries saturated steam
//water is entrained by the steam,and line is bend
//select the control volume as the fluid in the bend and apply amass balance
//since m1_dot=m2_dot,v1=v2
m_dot=0.15//mass flow rate
V_in_x=420//velocity in horizontal x direction
V_out_x=0//velocity out ,horizontal direction
printf("mass flow rate m_dot=%f kg/s\n velocity in x direction V_in=%f m/s\n velocity out in  the x direction=%f=m/s",m_dot,V_in_x,V_out_x);
//applying linear horizontal balance in x direction
F_x=m_dot*V_out_x-m_dot*V_in_x//force in x-dir
printf("\n force F_x=%f N",F_x);
//the x-dir force acting on the 90 deg elbow therefore,F_x=+63 N
V_in_y=0//velocity in vertical in y direction
V_out_y=420//velocity out vertical in y direction
printf("velocity in y dir V_in_y=%f m/s\n velocity out y dir V_out_y=%f m/s",V_in_y,V_out_y);
F_y=m_dot*V_out_y-m_dot*V_in_y//force in y dir
printf("\n force in y dir F_y=%f N",F_y);
//y dir force is acting on the elbow is therefore F_y=-63 N
F_res=sqrt(F_x*F_x+F_y*F_y)//resultant force F_res
printf("\n resultant force F_res=%f N",F_res);
//this is the force required to hold the elbow
