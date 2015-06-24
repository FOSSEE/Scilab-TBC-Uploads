clc
//given rxn A+B--k1-->C
//          B+C--k2-->D
k1=1, k2=1                         //given rate constants
disp("the solution of eg 4.14 -->Batch Reactors")
function dA_by_dt=f1a(t,A,B,C,D),
    dA_by_dt=-A*B,
endfunction
function dB_by_dt=f2a(t,A,B,C,D),
    dB_by_dt=-A*B-B*C,
endfunction
function dC_by_dt=f3a(t,A,B,C,D),
    dC_by_dt=A*B-B*C,
endfunction
function dD_by_dt=f4a(t,A,B,C,D),
    dD_by_dt=B*C,
endfunction
A=1,B=1,C=0,D=0                            //initial values
for t=.1:.1:10,
    h=.1                                    //step increment of 0.1
    k1=h*f1a(t,A,B,C,D)
    l1=h*f2a(t,A,B,C,D)
    m1=h*f3a(t,A,B,C,D)
    n1=h*f4a(t,A,B,C,D)
    k2=h*f1a(t+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    l2=h*f2a(t+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    m2=h*f3a(t+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    n2=h*f4a(t+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    k3=h*f1a(t+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    l3=h*f2a(t+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    m3=h*f3a(t+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    n3=h*f4a(t+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    k4=h*f1a(t+h,A+k3,B+l3,C+m3,D+n3)
    l4=h*f2a(t+h,A+k3,B+l3,C+m3,D+n3)
    m4=h*f3a(t+h,A+k3,B+l3,C+m3,D+n3)
    n4=h*f4a(t+h,A+k3,B+l3,C+m3,D+n3)
    A=A+(k1+2*k2+2*k3+k4)/6
    B=B+(l1+2*l2+2*l3+l4)/6
    C=C+(m1+2*m2+2*m3+m4)/6
    D=D+(n1+2*n2+2*n3+n4)/6
    if t==.5 |t==1|t==2|t==5 then disp(D,C,B,A,"secs is",t,"the conc. of A,B,C,D after");
    end 
end
    disp(D,C,B,A,"the conc. of A,B,C,D after 10 secs respectively is");