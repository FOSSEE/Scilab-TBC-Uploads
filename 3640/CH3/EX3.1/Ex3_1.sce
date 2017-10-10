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
r2=0.02;
X11=20 //in ohm
x1=0.05 //in ohm
X22=2000 //in ohm
x2=5 //in ohm
Xm1=X11-x1
Xm2=X22-x2
mprintf("Xm1=X11-x1=%fΩ\n",Xm1)
mprintf("Xm2=X22--x2=%fΩ\n",Xm2)
X12=sqrt(Xm1*Xm2)
mprintf("X12=sqrt(Xm1*Xm2)=%fΩ\n",X12)//ans may vary due to roundoff error
kVA=10 //rated kVA
V2=1000 //secondary voltage in volts
I2=(kVA*(10^3))/V2 //rated current
mprintf("I2=ratedkVA*1000/raated V2=%dA\n",I2)
Zl=V2/I2 //load impedence
I1=((Zl+r2+(%i*X22))*I2)/(%i*X12)//ans may vary due to roundoff error
disp('I1=(Zl+r2+jwL22)*I2/wL12*I1='+complexstring(I1)+'A')
r1=0.01 //in ohm
V1=((r1+(%i*X11))*I1)-(%i*X12*I2)
disp('V1=(r1+jwL11)I1-jwL12I2='+complexstring(V1)+'V')//ans may vary due to roundoff error
k1=Xm1/X11
k2=Xm2/X22
mprintf("k1=%f\n",k1)
mprintf("k2=%f\n",k2)
k=sqrt(k1*k2)
mprintf("k=sqrt(k1*k2)=%f\n",k)