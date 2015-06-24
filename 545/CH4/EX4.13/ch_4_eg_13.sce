clc
//given rxn A-->B-->C
k1=1, k2=1                 //given data
disp("the solution of eg 4.13 -->Batch Reactors")
function dA_by_dt=f1a(t,A,B,C),                   //functions defined
    dA_by_dt=-A,
endfunction
function dB_by_dt=f2a(t,A,B,C),
    dB_by_dt=A-B,
endfunction
function dC_by_dt=f3a(t,A,B,C),
    dC_by_dt=B,
endfunction
A=1,B=0,C=0                       //initial values
for t=0.1:.1:10,
    h=.1                                    //step increment of 0.1
    k1=h*f1a(t,A,B,C)
    l1=h*f2a(t,A,B,C)
    m1=h*f3a(t,A,B,C)
    k2=h*f1a(t+h/2,A+k1/2,B+l1/2,C+m1/2)
    l2=h*f2a(t+h/2,A+k1/2,B+l1/2,C+m1/2)
    m2=h*f3a(t+h/2,A+k1/2,B+l1/2,C+m1/2)
    k3=h*f1a(t+h/2,A+k2/2,B+l2/2,C+m2/2)
    l3=h*f2a(t+h/2,A+k2/2,B+l2/2,C+m2/2)
    m3=h*f3a(t+h/2,A+k2/2,B+l2/2,C+m2/2)
    k4=h*f1a(t+h,A+k3,B+l3,C+m3)
    l4=h*f2a(t+h,A+k3,B+l3,C+m3)
    m4=h*f3a(t+h,A+k3,B+l3,C+m3)
    A=A+(k1+2*k2+2*k3+k4)/6
    B=B+(l1+2*l2+2*l3+l4)/6
    C=C+(m1+2*m2+2*m3+m4)/6
    if t==.5 |t==1|t==2|t==5 then disp(C,B,A,"secs is",t,"the conc. of A,B,C after");
    end
end
disp(C,B,A,"the conc. of A,B,C after 10 secs respectively is");