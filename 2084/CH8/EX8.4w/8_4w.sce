//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.4w
//calculation of the work done by the given force

//given data
function F=f(x)
    F=(10+(.50*x))
endfunction
x1=0//initial position(in m) of the particle 
x2=2//final position(in m) of the particle

//calculation
W=integrate('f','x',x1,x2)//work done

printf('the work done by the given force for the given displacement is %d J',W)
