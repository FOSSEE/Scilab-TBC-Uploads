omega=exp(%i*120/180*%pi)
Vab=400
Vca=400*omega
Vbc=400/omega

//Mesh Method
A=[80+100*%i,100*%i;100*%i,50*%i]
I=inv(A)*[-Vca;Vbc]
Ia=I(1)
Ib=I(2)

Ic=-(Ia+Ib)
Van=80*Ia
Vbn=-50*%i*Ib
Vcn=100*%i*Ic

disp(Ia,Ib,Ic,Van,Vbn,Vcn)