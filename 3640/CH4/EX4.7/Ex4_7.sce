clc
//code uses userdefined function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
//dc test
Vdc=13.8 //dc voltage in volts
Idc=13 //direct current in amperes
//no load test
Vnl=220 //applied no voltage in volts
f=60 //applied frequency in Hz
//blocked rotor test
VBR=23.5 //blocked rotor voltage in volts
f1=15 //frequency in Hz
Ia=12.8 //current of phase A
Ib=13.1 //current of phase B
Ic=12.9 //current of phase C
//from blocked rotor
IBR=(Ia+Ib+Ic)/3 //ans may vary due to roundoff error
mprintf("IBR=%fA\n",IBR)
ZBR=VBR/(sqrt(3)*IBR)
mprintf("|ZBR|=%fΩ\n",ZBR)//ans may vary due to roundoff error
P1=179 //power in watts
P2=290 //power in watts
PBR=P1+P2
mprintf("PBR=%fW\n",PBR)
RBR=PBR/(3*(IBR^2))//ans may vary due to roundoff error
mprintf("RBR=%fΩ\n",RBR)
mprintf("θBR=%f\n",(acos(PBR/(sqrt(3)*VBR*IBR)))*(180/%pi))//ans may vary due to roundoff error
mprintf("X`BR=|ZBR|*sinθBR=%fΩ\n",ZBR*sin(acos(PBR/(sqrt(3)*VBR*IBR))))//ans may vary due to roundoff error
XBR=(f/f1)*(ZBR*sin(acos(PBR/(sqrt(3)*VBR*IBR))))
mprintf("XBR=(fB/f1)*X`BR=%fΩ\n",XBR)//ans may vary due to roundoff error
x1=0.4*XBR //designed reactance
x2=0.6*XBR //designed reactance
mprintf("x1=%fΩ\n",x1)//ans may vary due to roundoff error
mprintf("x2=%fΩ\n",x2)//ans may vary due to roundoff error
//from dc test
r1=0.5*(Vdc/Idc)
mprintf("r1=%fΩ\n",r1)//ans may vary due to roundoff error
r2=RBR-r1
mprintf("r2=%fΩ\n",r2)//ans may vary due to roundoff error
//from no load test
Ia=3.86 //current of phase A in amperes
Ib=3.86 //current of phase B in amperes
Ic=3.89 //current of phase C in amperes
Inl=(Ia+Ib+Ic)/3
mprintf("Inl=%fA\n",Inl)//ans may vary due to roundoff error
Znl=Vnl/(sqrt(3)*Inl)
mprintf("Znl=x1+Xm=%fΩ\n",Znl)//ans may vary due to roundoff error
Xm=Znl-x1
mprintf("Xm=Znl-x1=%fΩ\n",Xm)//ans may vary due to roundoff error
P1=550 //power in watts 
P2=-350 //power in watts
Pnl=P1+P2
mprintf("Pnl=%fW\n",Pnl)//ans may vary due to roundoff error
Pfwc=Pnl-(3*Inl*Inl*r1)
mprintf("Pfwc=%fW\n",Pfwc)//ans may vary due to roundoff error
Prot=Pfwc
s=0.03
z2=(r2/s)+(%i*x2)
disp('z2='+complexstring(z2)+'Ω')//ans may vary due to roundoff error
mprintf("Z2=%fohms with a phase angle of %fdegrees\n",abs(z2),(acos(real(z2)/abs(z2)))*180/%pi)
Zf=(z2*(%i*Xm))/(z2+(%i*Xm))
disp('Zf='+complexstring(Zf)+'Ω')//ans may vary due to roundoff error
mprintf("Zf=%fohms with a phase angle of %fdegrees\n",abs(Zf),(acos(real(Zf)/abs(Zf)))*180/%pi)
Rf=real(Zf)
Zin=r1+Zf+(%i*x1)
disp('Zin='+complexstring(Zin)+'Ω')//ans may vary due to roundoff error
mprintf("Zin=%fohms with a phase angle of %fdegrees\n",abs(Zin),(acos(real(Zin)/abs(Zin)))*180/%pi)
mprintf("power factor=%f\n",(real(Zin)/abs(Zin)))//ans may vary due to roundoff error
I1=Vnl/(sqrt(3)*abs(Zin))
mprintf("|I1|=%fA\n",I1)//ans may vary due to roundoff error
Pin=(sqrt(3)*(real(Zin)/abs(Zin))*I1*Vnl)//ans is wrong in textbook
mprintf("power drawn from line=sqrt(3)*VL*|I|*cosθΦ=%fW\n",Pin)
Rf=real(Zf)
Pg=3*I1*I1*Rf
mprintf("Pg=%fW\n",Pg)//ans is wrong in textbook
DMP=Pg*(1-s)
mprintf("DMP=%fW\n",DMP)//ans is wrong in textbook
Pout=DMP-Prot
mprintf("output horsepower=%fhp\n",Pout/746)//ans may vary due to roundoff error,1 hp=746 watts
mprintf("η=Pout/Pin=%f\n",Pout/Pin)//ans may vary due to roundoff error







