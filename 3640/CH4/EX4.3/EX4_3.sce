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

//induction machine parameters in ohms
r1=0.39 //primary resistance
r2=0.14 //secondary resistance
x1=0.35//primary reactance
x2=0.35//secondary reactance
Xm=16//manetizing reactance
VL=220 //supply volatge in volts
f=60 //frequency in Hz
//part a
p=4 //no of poles
ns=(120*f)/p 
mprintf("ns=%drev/min\n",ns)
n=1746 //runnimg speed of motor in rev/min
s=(ns-n)/ns
mprintf("s=%f\n",s)
z2=(r2/s)+(%i*x2)//ans may vary due to roundoff error
disp('Z2='+complexstring(z2)+'Ω')
mprintf("Z2=%fohm having a phase angle of %f degrees\n",abs(z2),(acos(real(z2)/abs(z2)))*180/%pi)
Zf=(%i*Xm*z2)/(z2+(%i*Xm))//ans may vary due to roundoff error
disp('Zf='+complexstring(Zf)+'Ω')
mprintf("Zf=%fohms having a phase angle of %f degrees\n",abs(Zf),(acos(real(Zf)/abs(Zf)))*180/%pi)
Rf=real(Zf)//ans may vary due to roundoff error
mprintf("Rf=%fΩ\n",Rf)
Zin=r1+(%i*x1)+Zf//ans may vary due to roundoff error
disp('Zin=r1+jx1+Zf='+complexstring(Zin)+'Ω')
mprintf("Zin=%fohms having a phase angle of %f degrees\n",abs(Zin),(acos(real(Zin)/abs(Zin)))*180/%pi)
Powerfctor=real(Zin)/abs(Zin)//ans may vary due to roundoff error
mprintf("Power facto=%f\n",Powerfctor)
I1=VL/(sqrt(3)*abs(Zin))
mprintf("|I1|=%fA\n",I1)//ans may vary due to roundoff error
Pin=sqrt(3)*I1*VL*Powerfctor
mprintf("Pin=%fW\n",Pin)//ans in the textbook is wrong
Pg=3*I1*I1*Rf
mprintf("Pg=%fW\n",Pg)//ans in the textbook is wrong
DMP=(1-s)*Pg
mprintf("Developed power=(1-s)Pg=%fW\n",DMP)//ans in the textbook is wrong
Prot=s*Pg //rotor copper losses
Pout=DMP-Prot//ans in the textbook is wrong
mprintf("Output power=%fW\n",Pout)
mprintf("Output horsepower=%f\n",Pout/746)//ans may vary due to roundoff error,1 hp=746 watts
mprintf("Developed torque=%flb-ft\n",7.04*(Pg/ns))//ans may vary due to roundoff error,1 N-m=7.04 lb-ft ot torque
n=(1-s)*ns//ans may vary due to roundoff error
mprintf("Output torque=%flb-ft\n",7.04*(Pout/n))
mprintf("Efficiency=%f\n",Pout/Pin)
//part b
s=1 //machine at stanstill
z2=r2+(%i*x2)//ans may vary due to roundoff error
disp('Z2='+complexstring(z2)+'Ω')
mprintf("Z2=%fohm having a phase angle of %f degrees\n",abs(z2),(acos(real(z2)/abs(z2)))*180/%pi)
Zf=(%i*Xm*z2)/(z2+(%i*Xm))//ans may vary due to roundoff error
disp('Zf='+complexstring(Zf)+'Ω')
mprintf("Zf=%fohms having a phase angle of %f degrees\n",abs(Zf),(acos(real(Zf)/abs(Zf)))*180/%pi)
Zin=r1+(%i*x1)+Zf//ans may vary due to roundoff error
disp('Zin='+complexstring(Zin)+'Ω')
mprintf("Zin=%fohms having a phase angle of %f degrees\n",abs(Zin),(acos(real(Zin)/abs(Zin)))*180/%pi)
I1=VL/(sqrt(3)*abs(Zin))//ans may vary due to roundoff error
Rf=real(Zf)
mprintf("Starting current=%fA\n",I1)
Pg=3*I1*I1*Rf
mprintf("Pg=%fW\n",Pg)//ans in the textbook is wrong
mprintf("τd=7.04*(Pg/ns)=%flb-ft\n",7.04*(Pg/ns))//ans may vary due to roundoff error,1 N-M=7.04 lb-ft of torque












