function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction


Vbc=-400*%i
Rl=1

[Sr,Sc]=polar_to_cart(10000,acos(0.8))
S=complex(Sr,Sc)


Vl=Vbc
Il=norm(S/(sqrt(3)*Vl))        ////////calculation mistake in book here
P=3*Il*Il*Rl
disp(P)

Van=norm(Vbc/sqrt(3))

Ia=Il*exp(-%i*acos(0.8))
omega=exp(%i*120/180*%pi)
Ib=Ia/omega

disp(Van,Ia,Ib)