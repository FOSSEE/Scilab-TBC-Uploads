
//chapter_no.-12,  page_no.-537
//Example_no.12-4-3

clc;

N=8;//number_of_fingers
er=13.1;//relative_dielectric_constant
h=.254;//substarte_height
l=.00254;//finger_length
w=.051;//finger_base_width
A1=.089;//contribution_of_interior_finger_for_h&gt;w
A2=.1;//contribution_of_two_exterior_fingers_for_h&gt;w
C=((er+1)*l*((A1*(N-3))+A2))/w;
disp(C,'the_Capacitance(in (pF/cm)is =');








