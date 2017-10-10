clc
//code uses usedefined function
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
pf=0.8 //power factor of full load
I2=1 //magnitude of load current in amperes in per unit system
I2pu=I2*exp(%i*(-1)*acos(pf))//-1 comes due to lagging power factor
disp('I2pu='+complexstring(I2pu)+'A')
pres=2 //percent resistance in ohms
preact=5 //percent reactance in ohms
Zeqpu=(pres/100)+(%i*(preact/100))
disp('Zeqpu='+complexstring(Zeqpu)+'Ω')
V1pu=1+(I2pu*Zeqpu)
disp('V1pu='+complexstring(V1pu)+'V')
Regulation=abs(V1pu)-1
mprintf("|V1pu|-1=%f\n",Regulation)


