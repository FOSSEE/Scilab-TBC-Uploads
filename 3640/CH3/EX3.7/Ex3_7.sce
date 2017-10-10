clc
//the code uses a userdefined function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
r1=3
r2=0.03
x1=15
x2=0.15
V1B=2400 //primary side voltage
V2B=240 //secondary side voltage
a=V1B/V2B
Zeq2=(r1/(a^2))+r2+(%i*((x1/(a^2))+x2))//ans may vary due to roundoff error
disp('Zeq2='+complexstring(Zeq2)+'Ω')
SB=10000// rated kva of the trnsformer
V2B=240
I2B=SB/V2B
mprintf("I2B=%fA\n",I2B)//ans may vary due to roundoff error
//with V2 reference
//0.8 pf lagging
I2=I2B*exp(%i*(-1)*acos(0.8))//ans may vary due to roundoff error
disp('I2='+complexstring(I2)+'A')
V2=240
V1=a*(V2+I2*Zeq2)//ans may vary due to roundoff error
disp('V1/a='+complexstring(V1/a)+'V')
mprintf("|V1|=%fV\n",abs(V1))
//0.8 pf leading
I2B=SB/V2B
I2=I2B*exp(%i*acos(0.8))//ans may vary due to roundoff error
V1=a*(V2+(I2*Zeq2))//ans may vary due to roundoff error
disp('V1='+complexstring(V1/a)+'V')
mprintf("|V1|=%fV\n",abs(V1))//ans may vary due to roundoff error



