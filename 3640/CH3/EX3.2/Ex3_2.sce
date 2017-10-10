clc
//code contains user defined function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
i2=141.4 //load current max val in amperes
r2=0.02 //secondary resistance in ohms
V2=707/sqrt(2)
pha=-30 //phase angle of load current with reference with reference voltage in degrees
I2=(i2/sqrt(2))*exp(%i*pha*3.14/180)//ans may vary due to roundoff error,conversion of degrees in radian for calculation
mprintf("V2=%dV\n",V2)
disp('I2='+complexstring(I2)+'A')
disp('Secondary drop I2r2 is='+complexstring(I2*r2)+'V')//ans may vary due to roundoff error
L12=3*(10^(-4))//secondary leakage inductance in henry
w=377 //angular frequency of the supply in rad/sec
x2=w*L12 //secondary leakage reactance
mprintf("x2=%fΩ\n",x2)
E12=(I2*%i*x2)//ans may vary due to roundoff error
disp('-E12=I2jx2='+complexstring(E12)+'V')
E2=V2+(r2+(%i*x2))*I2//ans may vary due to roundoff error
disp('E2='+complexstring(E2)+'V')
N1=300//primary winding turns
N2=30 //secondary turns
a=N1/N2
mprintf("a=N1/N2=%d\n",a)
E1=a*E2//ans may vary due to roundoff error
disp('E1=aE2='+complexstring(E1)+'V')
Iex1=0.707 //magnitude of exciting current of transformer in amperes
paex=-80 //phase angle of exciting current in degrees with reference voltage
Iex=(Iex1/sqrt(2))*exp(%i*paex*3.14/180)//ans may vary due to roundoff error,conversion of degrees to radians for calculation
I1=(I2/a)+Iex//ans may vary due to roundoff error
disp('I1='+complexstring(I1)+'A')
mprintf("Actual ratio=I2/I1=%f\n",abs(I2)/abs(I1))//ans may vary due to roundoff error
L11=0.03 //leakage inductance of primary in henry
E11=%i*w*L11*I1//ans may vary due to roundoff error
disp('E11=jwL11I1='+complexstring(E11)+'V')
r1=2 //primary winding resistance in ohms
I1r1=I1*r1//ans may vary due to roundoff error
disp('I1r2='+complexstring(I1r1)+'V')
V1=E1+I1r1+E11//ans may vary due to roundoff error
disp('V1=E1+I1r2+E11='+complexstring(V1)+'V')
mprintf("Actual voltage ratio is V1/V2=%f\n",abs(V1)/abs(V2))//ans may vary due to roundoff error
