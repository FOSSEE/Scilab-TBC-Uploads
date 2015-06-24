clc
disp("the solution of eg 4.18-->Non- Isothermal Plug Flow Reactor")
T=294.15
//rxn A-->B
R=8.314, rho=980.9, MW=200, U=1900, Cp=15.7, H_rxn=92900, T1=388.71, mdot=1.26, dia=2.54*10^-2, E=108847                 //given data
b=E/(R*T1),k1=5.64*10^13*exp(-b),  A=%pi*dia^2/4, na0=mdot*1000/MW, Ts=388.71
k=k1*exp(b*(1-T1/T))

//dX_by_dV=ra/na0
//dX_by_dV=k*(1-X)/F
//from energX balance
//mdot*Cp*dT_by_dz+ra*A*H_RXN-q=0
//q=U*%pi*dia*(Ts-T)
//-mdot*Cp*dT_by_dV+4*U/dia*(Ts-T)-ra*H_rxn=0
F=mdot/rho
t1=A*k1/F

s1=mdot*Cp/A
s2=4*U/dia
s3=H_rxn*t1

function dX_by_dz=fg1(z,X,T),
         dX_by_dz=t1*(1-X)*exp(b*(1-T1/T))
endfunction
function dT_by_dz=fd1(z,X,T),
         ra=na0/A*(t1*(1-X)*exp(b*(1-T1/T)))
         dT_by_dz=(ra*H_rxn-s2*(Ts-T))/-s1
         
endfunction

X=0,T=294.15
for z=0:.1:350,
    h=.1                                    //szep incremenz of 0.1
    k1=h*fg1(z,X,T)
    l1=h*fd1(z,X,T)
    k2=h*fg1(z+h/2,X+k1/2,T+l1/2)
    l2=h*fd1(z+h/2,X+k1/2,T+l1/2)
    k3=h*fg1(z+h/2,X+k2/2,T+l2/2)
    l3=h*fd1(z+h/2,X+k2/2,T+l2/2)
    k4=h*fg1(z+h,X+k3,T+l3)
    l4=h*fd1(z+h,X+k3,T+l3)
    X=X+(k1+2*k2+2*k3+k4)/6
    T=T+(l1+2*l2+2*l3+l4)/6
    //condition for height calc. for 90% conversion
    if X>.9 &X<.9005 then disp(z,"the height of the tower required for 90% conversion in mtrs is"); break
    end
    end