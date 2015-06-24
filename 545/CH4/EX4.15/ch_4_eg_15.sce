clc
disp("the solution of eg 4.15 -->Plug Flow Reactor")
rc_k1=1                      //given rate constant
u=1                 //mean axial velocity
function dCa_by_dx=fm(x,Ca),
    dCa_by_dx=-Ca,
endfunction
Ca=1
for x=.1:.1:10,
    h=0.1                                    //step increment of 0.1
    k1=h*fm(x,Ca)
    k2=h*fm(x+h/2,Ca+k1/2)
    k3=h*fm(x+h/2,Ca+k2/2)
    k4=h*fm(x+h,Ca+k3)
    Ca=Ca+(k1+2*k2+2*k3+k4)/6
    if x==.5|x==1|x==2|x==5 then disp(Ca,"length is",x,"the value of conc. at");
    end
end
disp(Ca,"the value of Ca at x=10 using Runge Kutta method in plug flow reactor is");
