clc

//the code below uses userdefined complexstring function
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
VLB=2400 //line to base voltage in volts
V1=VLB/sqrt(3)  //reference phasor in volts //ans may vary due to roundoff error
mprintf("V1=%fV\n",V1)
kVAB=9375 //rated kVA
I1B=(kVAB*1000)/(sqrt(3)*VLB)
pf=0.8 //power factor
mprintf("I1B=%fA\n",I1B) //ans may vary due to roundoff error
I1=I1B*exp((-1)*%i*(acos(pf)))
disp('I1='+complexstring(I1)+'A')//ans may vary due to roundoff error
mprintf("\n")
x1=0.1//in ohms
disp('EΦ=V1+jI1x1='+complexstring(V1+%i*I1*x1)+'V')//ans may vary due to roundoff error
mprintf("\n")
disp('sqrt3*|EΦ|='+complexstring((abs(V1+%i*I1*x1))*sqrt(3))+'V')
Ifu=110 //value in ampere,dc
Ifs=149 //value in ampere,dc
ks=Ifs/Ifu
mprintf("ks=%f\n",ks) //ans may vary due to roundoff error
m1=(abs((V1+%i*I1*x1)))/Ifs //equal to m` in textbook
mprintf("ḿ́=|EΦ|/Ifs=%fΩ\n",m1)//ans may vary due to roundoff error
xdu=0.8 //in ohms
xd=x1+((xdu-x1)/ks)
mprintf("xd=x1+(xdu-x1)/ks=%fΩ\n",xd)//ans may vary due to roundoff error
Ef=V1+(%i*I1*xd)
disp('Ef='+complexstring(Ef)+'V')//ans may vary due to roundoff error
mprintf("\n")
mprintf("If=%fA\n",abs(Ef)/m1)//ans may vary due to roundoff error












