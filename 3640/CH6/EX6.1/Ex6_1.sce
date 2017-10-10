clc
//code uses a userdefined function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
r1m=1.9//resistance in ohms
x1m=2.6 //reactance in ohms
r2=3.6 //resistance in ohms
x2=2.6 //reactance in ohms
Xm=56 //magnetizing reactance in ohms
Prot=25 //rotational losses in watts
f=60 //supply frequency in Hz
z1m=r1m+(%i*x1m)
s=0.05 //slip
disp('Z1m='+complexstring(z1m)+'Ω')
Zf=((%i*Xm)*((r2/s)+(%i*x2)))/((%i*Xm)+(r2/s)+(%i*x2))//ans may vary due to roundoff error
disp('Zf/2='+complexstring(Zf/2)+'Ω')
Zb=((%i*Xm)*((r2/(2-s))+(%i*x2)))/((%i*Xm)+(r2/(2-s))+(%i*x2))//ans may vary due to roundoff error
disp('Zb/2='+complexstring(Zb/2)+'Ω')
Vm=115 //voltage in volts
Im=Vm/((Zf/2)+(Zb/2)+z1m) //ans may vary due to roundoff error
Imf=Im
Imb=Im
disp('Im='+complexstring(Im)+'A')
Pin=Vm*abs(Im)*(real(Im)/abs(Im))//ans may vary due to roundoff error
mprintf("Pin=%fW\n",Pin)
Pg=((abs(Im))^2)*(real(Zf/2)-real(Zb/2))//ans may vary due to roundoff error
mprintf("Pg=Pgf-Pgb=%fW\n",Pg)
mprintf("τd=%fN-m\n",Pg/(2*%pi*(f/2)))
DMP=Pg*(1-s)
mprintf("DMP=%fW\n",DMP)//ans may vary due to roundoff error
Pout=DMP-Prot
mprintf("Pout=%fW\n",Pout)//ans may vary due to roundoff error
mprintf("Efficiency=%f\n",Pout/Pin)//ans may vary due to roundoff error











