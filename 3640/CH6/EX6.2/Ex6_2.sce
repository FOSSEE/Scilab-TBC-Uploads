clc
//Ex6_2 is an extension of Ex6_1
//code uses userdefined  function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
r1a=12//resistance in ohms
x1a=6.5//reactance in ohms
Xc=-20 //reactance in ohms
r1m=1.9 //from E6_1
x2=2.6 //from Ex6_1
s=1
a=1.6 //no unit
r2=3.6 //resistance in ohms
x2=2.6 //reactance in ohms
Xm=56 //magnetizing reactance in ohms
Vm=115 //applied voltage in volts
Zf=((%i*Xm)*((r2/s)+(%i*x2)))/((%i*Xm)+(r2/s)+(%i*x2))//from Ex6_1
Zst=Zf
Zb=Zf
z1a=r1a+(%i*x1a)+(%i*Xc)
disp('z1a='+complexstring(z1a)+'Ω')//ans may vary due to roundoff error
mprintf("z1a=%fohm havinga phase angle of %f degrees\n",abs(z1a),(acos(real(z1a)/abs(z1a)))*180/%pi)
Z12=((1/2)*(z1a/(a*a)))-(r1m+(%i*x2))//ans in  textbook is wrong
disp('Z12='+complexstring(Z12)+'Ω')//ans may vary due to roundoff error
mprintf("Z12=%fohm havinga phase angle of %f degrees\n",abs(Z12),(acos(real(Z12)/abs(Z12)))*180/%pi)
Vmf=(Vm/2)*(1-(%i/a))
disp('Vmf='+complexstring(Vmf)+'V')//ans may vary due to roundoff error
mprintf("Vmf=%fV havinga phase angle of %f degrees\n",abs(Vmf),(-1)*(acos(real(Vmf)/abs(Vmf)))*180/%pi)
Vmb=(Vm/2)*(1+(%i/a))
disp('Vmb='+complexstring(Vmb)+'V')//ans may vary due to roundoff error
mprintf("Vmb=%fV having a phase angle of %f degrees\n",abs(Vmb),(acos(real(Vmb)/abs(Vmb)))*180/%pi)
Imf=11.77*exp(%i*(-1)*54.93*%pi/180)//textbook doesnt provide any formula or hint for this calculation
Imb=4.37*exp(%i*(-1)*19.7*%pi/180)//textbook doesnt provide any formula or hint for this calculation
disp('Imf='+complexstring(Imf)+'A')//ans may vary due to roundoff error
disp('Imb='+complexstring(Imb)+'A')//ans may vary due to roundoff error
mprintf("Imf=%fA having a phase angle of %f degrees\n",11.77,-54.93)
mprintf("Imb=%fA having a phase angle of %f degrees\n",4.37,-19.37)
mprintf("τst=%fN-m\n",(2*real(Zst)*((abs(Imf)^2)-(abs(Imb)^2)))/(60*%pi))//ans may vary due to roundoff error
Im=Imf+Imb
disp('Im='+complexstring(Im)+'A')//ans may vary due to roundoff error
mprintf("Im=%fA having a phase angle of%f degrees\n",abs(Im),(-1)*(acos(real(Im)/abs(Im)))*180/%pi)
Ia=(%i*(Imf-Imb))/a
disp('Ia='+complexstring(Ia)+'A')//ans may vary due to roundoff error
mprintf("Ia=%fA having a phase angle of %f degrees\n",abs(Ia),(acos(real(Ia)/abs(Ia)))*180/%pi)
I=Im+Ia
disp('Line current='+complexstring(I)+'A')//ans may vary due to roundoff error
mprintf("I=%fA having a phase angle of %f degrees\n",abs(I),(-1)*(acos(real(I)/abs(I)))*180/%pi)








