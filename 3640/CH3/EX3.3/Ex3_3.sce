clc
//the code uses userdefined function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
E1=2400 //primary voltage rating in volts
E2=240 //secondary voltage rating in volts
z=2 //magnitude of impedance connected to secondary terminals in ohms
pha1=36.9 //phase angle of impedance connected with reference in degrees
a=E1/E2
mprintf("a=%d\n",a)
V1=2200 // applied primary voltage to transformer in volts
V2=V1/a
mprintf("|V2|=|V1|/a=%dV\n",V2)
I2=V2/(z*exp(pha1*%i*3.14/180))//ans in textbook is wrong,conversion of degree to radian for calculation
disp('I2='+complexstring(I2)+'A')
I1=I2/a //ans may vary due to roundoff error
disp('I1=I2/a='+complexstring(I1)+'A')
Zin=V1/I1
disp('Zin=V1/I1='+complexstring(Zin)+'Ω')
S2=V2*I2
pf=0.8 //power factor of load
mprintf("|S2|=|V2||I2|=%fkVA\n",(abs(V2)*abs(I2))/1000)
mprintf("P2=|S2|*cosθ2=%fkW\n",(abs(S2)*pf)/1000)
mprintf("|S1|=|V2||I1|=%fkVA\n",(abs(V1)*abs(I1))/1000)
mprintf("P1=|S1|cosθ1=%fkW\n",((abs(V1)*abs(I1))*cos(pha1*3.14/180))/1000)//ans may vary due to roundoff error,conversion of degree to radian for calculation


