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
V2=120 //reference voltage in volts
kVA=16.67*(10^3) //kVA rating of transformer
I2=kVA/V2 //secondaary current aat unity pf 
mprintf("I2=kVA/V2=%fA\n",I2)//ans may be wrong due to roundoff error
r2=0.00519 //secondary winding resistance in ohms
x2=0.0216  //secondary winding reactance in ohms
a=7200/120
E2=V2+(I2*(r2+(%i*x2)))//secondary induced voltage //ans may be wrong due to roundoff error
disp('E2=V2+I2(r2+jx2)='+complexstring(E2)+'V')
E1=a*E2//ans may be wrong due to roundoff error
disp('E1='+complexstring(E1)+'V')
Rc=311000
Ihe=E1/Rc
disp('core loss current='+complexstring(Ihe)+'A')
Phe=((abs(Ihe))^2)*Rc//ans may be wrong due to roundoff error
mprintf("Core loss Ph+e=|Ih+e|^2*Rc=%fW\n",Phe)
Xm=54800
disp('IΦ=E1/jXm='+complexstring(E1/(%i*Xm))+'A')//ans may be wrong due to roundoff error
Iex=Ihe+(E1/(%i*Xm))
disp('Iex=Ih+e+IΦ='+complexstring(Iex)+'A')//ans may be wrong due to roundoff error
I1=Iex+(I2/a)
disp('I1=Iex+I2/a='+complexstring(I1)+'A')//ans may be wrong due to roundoff error
r1=18.7 //primary side resistaance
x1=77.8
V1=E1+(I1*(r1+(%i*x1)))
disp('V1=E1+I1(r1+jx1)='+complexstring(V1)+'V')//ans in the textbook is wrong
Pcu=(((abs(I1))^2)*r1)+(((abs(I2))^2)*r2)//copper loss
mprintf("Pcu=%fW\n",Pcu)//ans may be wrong due to roundoff error
mprintf("Efficiencyη=output watts/output+losses=%f\n",16670/(16670+Pcu+Phe))//ans may be wrong due to roundoff error










