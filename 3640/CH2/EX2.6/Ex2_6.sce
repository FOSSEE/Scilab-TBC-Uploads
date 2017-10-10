clc
//the example below is an extension of Ex2_5
//the following code contains userdefined fucntion complexstring 
function s=complexstring(a)
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
Load=5000 //load of the plant in kW
pf1=0.8 //power factor of load(lagging)
Sp=Load+(Load*tan(acos(pf1)))*%i //original complex power of load in kVA
disp('Sp='+complexstring(Sp)+'kVA')
pf2=0.9 //new power factor
Qp1=real(Sp)*tan(acos(0.9)) //reactive power,equal to Qp` in textbook
mprintf("Qp`=%fkVAR\n",Qp1)//the ans vary due to roundoff error
Qp=imag(Sp)
mprintf("Qs=%fkVAR",Qp1-Qp)//KVAR to be supplied by synchronous condenser





