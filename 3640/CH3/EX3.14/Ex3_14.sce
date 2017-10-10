clc
//open ckt short ckt test
//code uses userdefined function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
kVA=50 //kVA rating
Poc=500 //core loss in watts
Voc=208 //open ckt voltage in volts
Vphioc=Voc/sqrt(3)
mprintf("VΦoc=Voc/sqrt(3)=%fV\n",Vphioc)//ans may vary due to roundoff error
Pphioc=Poc/3
mprintf("PΦoc=Poc/3=%fW\n",Pphioc)//ans may vary due to roundoff error
Ioc=8 //open ckt current in amperes
mprintf("RcLV=VΦ*VΦ/PΦ=%fΩ\n",(Vphioc*Vphioc)/Pphioc)//ans may vary due to roundoff error
mprintf("Voc^2/Poc=%fΩ\n",(Voc^2)/Poc)//ans may vary due to roundoff error
mprintf("sinθoc=%f\n",sin(acos(Poc/(sqrt(3)*Ioc*Voc))))//ans may vary due to roundoff error
mprintf("IΦ=IΦoc *sinθoc=%fA\n",Ioc*sin(acos(Poc/(sqrt(3)*Ioc*Voc))))//ans may vary due to roundoff error
mprintf("XmLV=VΦoc/IΦ=%fΩ\n",(Voc/sqrt(3))/(Ioc*sin(acos(Poc/(sqrt(3)*Ioc*Voc)))))//ans may vary due to roundoff error
//short ckt 
Psc=600 //copper loss in watts
Isc=4.011 //short circuit current in amperes
Vsc=370 //short circuit voltage in volts
ReqHV=(Psc/3)/((Isc/sqrt(3))^2)
mprintf("ReqHV=PΦsc/IΦsc^2=%fΩ\n",ReqHV)//ans may vary due to roundoff error
ZeqHV=Vsc/(Isc/sqrt(3))
mprintf("|ZeqHV|=VΦsc/IΦsc=%fΩ\n",ZeqHV)//ans may vary due to roundoff error
XeqHV=sqrt((ZeqHV^2)-(ReqHV^2))
mprintf("XeqHV=%fΩ\n",XeqHV)//ans may vary due to roundoff error
VHVB=7200//secondary side voltage in volts
VLVB=208/sqrt(3)//primary side voltage in volts
aV=VHVB/VLVB
mprintf("NHV/NLV=VHVB/VLVB=%f\n",aV)//ans may vary due to roundoff error
mprintf("RcHV=RcLV*aV*aV=%fΩ\n",((Vphioc*Vphioc)/Pphioc)*aV*aV)//ans in the textbook is wrong
mprintf("XmHV=XmLV*aV*aV=%fΩ\n",(Voc/sqrt(3))/(Ioc*sin(acos(Poc/(sqrt(3)*Ioc*Voc))))*aV*aV)//ans in the textbook is wrong
ZeqLV=(ReqHV+(%i*XeqHV))/(aV*aV)
disp('ZeqLV='+complexstring(ZeqLV)+'Ω')//ans may vary due to roundoff error
mprintf("ZeqLV=%f ohms with a phase angle of %f degrees\n",abs(ZeqLV),(acos(real(ZeqLV)/abs(ZeqLV)))*180/%pi)
SB=50000 //rating of transformer
ZLVB=(Voc*Voc)/SB
mprintf("ZLVB=%fΩ\n",ZLVB)//ans may vary due to roundoff error
Reqpu=(ReqHV/(aV*aV))/ZLVB
mprintf("Reqpu=%fΩ\n",Reqpu)//ans may vary due to roundoff error
Xeqpu=(XeqHV/(aV*aV))/ZLVB
mprintf("Xeqpu=%fΩ\n",Xeqpu)//ans may vary due to roundoff error
Zeqpu=Reqpu+(%i*Xeqpu)
disp('Zeqpu='+complexstring(Zeqpu)+'Ω')//ans may vary due to roundoff error
mprintf("Zeqpu=%fohms with a pgase angle of %f degrees\n",abs(Zeqpu),(acos(real(Zeqpu)/abs(Zeqpu)))*180/%pi)
V1pu=1+((exp(%i*(-1)*acos(0.8)))*Zeqpu)
disp('V1pu='+complexstring(V1pu))//ans may vary due to roundoff error
mprintf("V1pu=%fV with a phase angle of %f degrees\n",abs(V1pu),(acos(real(V1pu)/abs(V1pu)))*180/%pi)
mprintf("Regulation=%f\n",(abs(V1pu)-1))//ans may vary due to roundoff error
//full load efficiency
pf=0.8 //power factor of load
Phepu=Poc/SB
mprintf("η=cosθ/cosθ+Reqpu+Phepu=%f\n",pf/(pf+Reqpu+Phepu))//ans may vary due to roundoff error
//second method
mprintf("η=%f\n",(SB*pf)/((SB*pf)+Poc+Psc))
//ans may vary due to roundoff error










