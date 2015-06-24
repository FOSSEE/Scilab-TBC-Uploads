clc
//given rxn A+B--k1-->C
//          B+C--k2-->D
rc_k1=1,rc_k2=1                             //rate constants
disp("the solution of eg 4.17 -->Plug Flow Reactor")
function dA_by_dx=f1a(x,A,B,C,D),
    dA_by_dx=-A*B,
endfunction
function dB_by_dx=f2a(x,A,B,C,D),
    dB_by_dx=-A*B-B*C,
endfunction
function dC_by_dx=f3a(x,A,B,C,D),
    dC_by_dx=A*B-B*C,
endfunction
function dD_by_dx=f4a(x,A,B,C,D),
    dD_by_dx=B*C,
endfunction
A=1,B=1,C=0,D=0
for x=.1:.1:10,
    h=.1                                    //step increment of 0.1
    k1=h*f1a(x,A,B,C,D)
    l1=h*f2a(x,A,B,C,D)
    m1=h*f3a(x,A,B,C,D)
    n1=h*f4a(x,A,B,C,D)
    k2=h*f1a(x+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    l2=h*f2a(x+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    m2=h*f3a(x+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    n2=h*f4a(x+h/2,A+k1/2,B+l1/2,C+m1/2,D+n1/2)
    k3=h*f1a(x+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    l3=h*f2a(x+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    m3=h*f3a(x+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    n3=h*f4a(x+h/2,A+k2/2,B+l2/2,C+m2/2,D+n2/2)
    k4=h*f1a(x+h,A+k3,B+l3,C+m3,D+n3)
    l4=h*f2a(x+h,A+k3,B+l3,C+m3,D+n3)
    m4=h*f3a(x+h,A+k3,B+l3,C+m3,D+n3)
    n4=h*f4a(x+h,A+k3,B+l3,C+m3,D+n3)
    A=A+(k1+2*k2+2*k3+k4)/6
    B=B+(l1+2*l2+2*l3+l4)/6
    C=C+(m1+2*m2+2*m3+m4)/6
    D=D+(n1+2*n2+2*n3+n4)/6
    if x==.5 |x==1|x==2|x==5 then disp(D,C,B,A,"secs is",x,"the conc. of A,B,C,D after");
    end
end
    disp(D,C,B,A,"the conc. of A,B,C,D after 10 secs respectively is");