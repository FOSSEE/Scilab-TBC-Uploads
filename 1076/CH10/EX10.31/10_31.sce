clear
clc

a=exp(%i *2*%pi/3)

Z1=complex(2.8,1)
Z2=complex(.1,.6)

V=400
E=V/sqrt(3)

Ia1=E/(Z1+Z2)
Ia2=-Ia1

Ia=Ia1+Ia2
Ib= (a^2-a)*Ia1
Ic=-Ib

disp( "Line Currents Ia, Ib, Ic, in amperes")
mprintf("\nIa= %s", string(round(abs(Ia)*10)/10) +'/_'+ string(0) )
mprintf("\nIb= %s", string(round(abs(Ib)*10)/10) +'/_'+ string(round(atand(imag(Ib)/real(Ib))*100)/100 -180) )
mprintf("\nIc= %s", string(round(abs(Ic)*10)/10) +'/_'+ string(round(atand(imag(Ic)/real(Ic))*100)/100) )

Va2=-Z2 * Ia2
Vaa=3*Va2
Van=(Z1*Ia1)+(Z2*Ia2)
Vcn=(a*Z1*Ia1)+(a*a*Z2*Ia2)
Vbn=(a*a*Z1*Ia1)+(a*Z2*Ia2)
VNn=Va2


mprintf("\n\n\nVaa= %s", string(round(abs(Vaa)*100)/100) +'/_'+ string(round(atand(imag(Vaa)/real(Vaa))*10)/10))
mprintf("\nVan= %s", string(round(abs(Van)*100)/100) +'/_'+ string(round(atand(imag(Van)/real(Van))*10)/10))//error in value substitution in textbook
mprintf("\nVbn= %s", string(round(abs(Vbn)*10)/10) +'/_'+ string(round(atand(imag(Vbn)/real(Vbn))*10)/10 -180))
mprintf("\nVcn= %s", string(round(abs(Vcn)*10)/10) +'/_'+ string(round(atand(imag(Vcn)/real(Vcn))*10)/10 +180)) //error in value substitution in textbook
mprintf("\nVNn= %s", string(round(abs(VNn)*100)/100) +'/_'+ string(round(atand(imag(VNn)/real(VNn))*10)/10))
disp("error is due to mistake in value substitution in textbook")
