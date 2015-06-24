clc();
clear;
//Given :
// E = 2*10^9*t  V/m
// a_x = e*E/m , where e = 1.6*10^-19 C , m = 9.12 × 10^-31 kg
// a_x = 3.52*10^20*t m/s^2
// v_x = integral of a_x dt
//(a)
function a_x = f(t),a_x = 3.530*10^20*t,endfunction
v_x = intg(0,50*10^-9,f); // electron speed in m/s at time = 50 ns
printf("v_x = %.1f x 10^5 m/s\n",v_x*10^-5);
//(b)
//v_x = 1.76*10^20*t^2 m/s
function vx = v(t),vx = 1.76*10^20*t^2 ,endfunction
x = intg(0,50*10^-9,v);// distance covered in m  in 50 ns
printf("x = %.2f mm\n",x*10^3);
//(c)
//x = 5.87*10^19*t^3 m
X = 5*10^-2; //distance between plates in m
t = (X/(5.87*10^19))^(1/3); // time required in s
printf("t = %.2f x 10^-7 s",t*10^7);


