clc
//batch reactors
disp("the solution of e.g. 4.11 -->Batch and Stirred Tank Reactors")
//rxn given A--> B
rate_const_k=1
function dCa_by_dt=fs1(t,Ca),
    dCa_by_dt=-rate_const_k*Ca,
endfunction
Ca=1
for t=0.1:0.1:3,
    h=0.1                                    //step increment of 0.1
    k1=h*fs1(t,Ca)
    k2=h*fs1(t+h/2,Ca+k1/2)
    k3=h*fs1(t+h/2,Ca+k2/2)
    k4=h*fs1(t+h,Ca+k3)
    Ca=Ca+(k1+2*k2+2*k3+k4)/6
end
disp(Ca,"the value of conc. at t=3 using Runge Kutta method is");
Ca_anl=exp(-t)                   //analytical solution
disp(Ca_anl,"the analytical soln. is")