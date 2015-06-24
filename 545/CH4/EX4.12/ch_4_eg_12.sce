clc
//rxn A-->B
//input=FCa0, output=FCa
//applying mass balance of component A we get d(V*Ca)/dt=F*Ca0-F*Ca-k*Ca*V
disp("the solution of e.g. 4.12 -->Batch and Stirred Tank Reactors")
rate_const_k=1
Ca0=1,F=1, V=10

function  dVCa_by_dt=fr(t,Ca1),
    dVCa_by_dt=F*Ca0-F*Ca1-rate_const_k*Ca1*V,
endfunction
Ca1=1
for t=0.1:0.1:10,
    h=0.1                                    //step increment of 0.1
    k1=h*fr(t,Ca1)
    k2=h*fr(t+h/2,Ca1+k1/2)
    k3=h*fr(t+h/2,Ca1+k2/2)
    k4=h*fr(t+h,Ca1+k3)
    Ca1=Ca1+(k1+2*k2+2*k3+k4)/6
end                    //final value
disp(Ca1,"the value of Ca at t=10 s using Runge Kutta method is");
Ca_steady=F*Ca0/(F+rate_const_k*V)
disp(Ca_steady,"the steady state value of conc. is");