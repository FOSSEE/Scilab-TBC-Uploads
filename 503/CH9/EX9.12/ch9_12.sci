//find line current and starting torque with direct switching, stator resistance starting, autotransformer starting, star delta starting, autotransformer ratio give 1 pu

clc;
//I_s/I_fl=6;
s_fl=0.05;
disp('by direct switching');
Is=6;disp(Is,'line current(pu)');
T=Is^2*s_fl;disp(T,'torque(pu)');

disp('by stator resistance starting');
Is=2;disp(Is,'line current(pu)');        //given
T=Is^2*s_fl;disp(T,'torque(pu)');

disp('by autotransformer starting');
x=2/6;
Is_motor=2;
Is=Is_motor*x;disp(Is,'line current(pu)');
T=Is^2*s_fl;disp(T,'torque(pu)');

disp('by star delta starting');
Is=(1/3)*6;disp(Is,'line current(pu)');
T=Is^2*s_fl*3;disp(T,'torque(pu)');

disp('by autotransformer starting');
Ts=1;
x=sqrt(Ts/((6^2)*s_fl));disp(x,'x');