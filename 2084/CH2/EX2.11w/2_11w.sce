//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.11w
//calculation of change in volume of sphere as radius is changed

//given data
R=20; //initial radius(in cm) of sphere 
Rdash=20.1; //final radius(in cm) of sphere
function v=f(R)
    v=(4*%pi*R^3)/3;
endfunction

//calculation
function v=f(R)
    v=(4*%pi*R^3)/3;
endfunction

deltaR=Rdash-R;
deltav=(derivative(f,R))*deltaR

disp(deltav,'the change in volume(in cm cube) of sphere is')
