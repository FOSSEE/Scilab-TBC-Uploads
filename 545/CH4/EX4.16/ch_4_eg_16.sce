clc
//given rxn A-->B-->C
rc_k1=1, rc_k2=1                           //given rate constants
u=1                                  //mean axial velocity
disp("the solution of eg 4.16 -->Plug Flow Reactor")
function dA_by_dx=f1e(x,A,B,C),
    dA_by_dx=-A,
endfunction
function dB_by_dx=f2e(x,A,B,C),
    dB_by_dx=A-B,
endfunction
function dC_by_dx=f3e(x,A,B,C),
    dC_by_dx=B,
endfunction
A=1,B=0,C=0
for x=.1:.1:10,
    h=.1                                    //step increment of 0.1
    k1=h*f1e(x,A,B,C)
    l1=h*f2e(x,A,B,C)
    m1=h*f3e(x,A,B,C)
    k2=h*f1e(x+h/2,A+k1/2,B+l1/2,C+m1/2)
    l2=h*f2e(x+h/2,A+k1/2,B+l1/2,C+m1/2)
    m2=h*f3e(x+h/2,A+k1/2,B+l1/2,C+m1/2)
    k3=h*f1e(x+h/2,A+k2/2,B+l2/2,C+m2/2)
    l3=h*f2e(x+h/2,A+k2/2,B+l2/2,C+m2/2)
    m3=h*f3e(x+h/2,A+k2/2,B+l2/2,C+m2/2)
    k4=h*f1e(x+h,A+k3,B+l3,C+m3)
    l4=h*f2e(x+h,A+k3,B+l3,C+m3)
    m4=h*f3e(x+h,A+k3,B+l3,C+m3)
    A=A+(k1+2*k2+2*k3+k4)/6
    B=B+(l1+2*l2+2*l3+l4)/6
    C=C+(m1+2*m2+2*m3+m4)/6
    if x==.5 |x==1|x==2|x==5 then disp(C,B,A,"mtr is",x,"the conc. of A,B,C at a distance of");
    end
end
    disp(C,B,A,"the conc. of A,B,C at a distance of 10 mtr is");