clc
//below is an extension of Ex4_3
//code uses userdefined function complexstring 
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
x1=0.35 //primary reactance in ohms
r1=0.39 //primary resistance in ohms
Xm=16 //magnetizing reactance
r2=0.14 //secondary resistance in ohms 
x2=0.35 //secondary reactance in ohms
ws=188.5 //angular frequency in rad/sec
V=220 //rated voltage in volts
//part a
V1m=V/sqrt(3)//ans may vary due to roundoff error
VTH=V1m*(Xm/(Xm+x2))
mprintf("VTH=V1m=%fV\n",VTH)//ans may vary due to roundoff error
X1=x1
mprintf("X1=%fΩ\n",X1)
R1=r1*(Xm/(x1+Xm))//ans may vary due to roundoff error
mprintf("R1=%fΩ\n",R1)
mprintf("τmax=%fN-m\n",((3/ws)*(VTH^2))/(2*(R1+sqrt((R1^2)+((2*X1)^2)))))//ans may vary due to roundoff error
//part b
sM=r2/sqrt((R1^2)+((X1+x1)^2))//ans may vary due to roundoff error
mprintf("sM=%f\n",sM)
mprintf("r2/sM=%fΩ\n",r2/sM)//ans may vary due to roundoff error
Zf=((%i*Xm)*((r2/sM)+(%i*x2)))/((r2/sM)+(%i*(x2+Xm)))//ans may vary due to roundoff error
disp('Zf='+complexstring(Zf)+'Ω')
mprintf("Zf=%fohm having a phase angle of %f degrees\n",abs(Zf),(acos(real(Zf)/abs(Zf)))*180/%pi)
z1=r1+(%i*x1)
Zin=z1+Zf
disp('Zin='+complexstring(Zin)+'Ω')//ans may vary due to roundoff error
mprintf("Zin=%fohm having a phase angle of %f degrees\n",abs(Zin),(acos(real(Zin)/abs(Zin)))*180/%pi)
I1=V1m/abs(Zin)
mprintf("I1=%fA\n",I1)//ans may vary due to roundoff error
Rf=real(Zf) //resistance in ohms
Pg=3*I1*I1*Rf//ans  in the textbook is wrong
mprintf("Pg=%fW\n",Pg)
mprintf("τmax=Pg/ws=%fN-m\n",Pg/ws)//ans may vary due to roundoff error







