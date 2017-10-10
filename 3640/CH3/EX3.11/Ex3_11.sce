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
//delta connected
// sol 1
V1B=7200 //primary voltage in volts
VL1B=7200 //primary voltage in volts
kVA=50 //kva rating 
IL1B=(kVA*1000)/((sqrt(3))*VL1B)//ans may vary due to roundoff error
mprintf("IL1B=%fA\n",IL1B)
I1B=IL1B/sqrt(3)//ans may vary due to roundoff error
mprintf("I1B=%fA\n",I1B)
//star connected
VL2B=208 //seconadry voltage in volts
V2B=VL2B/sqrt(3)//ans may vary due to roundoff error
mprintf("V2B=%fV\n",VL2B/sqrt(3))
IL2B=(kVA*1000)/(sqrt(3)*VL2B)//ans may vary due to roundoff error
mprintf("IL2B=%fA\n",IL2B)
I2B=IL2B
a=V1B/V2B//ans may vary due to roundoff error
mprintf("a=%f\n",a)
Z2B=V2B/I2B//ans may vary due to roundoff error
mprintf("Z2B=V2B/I2B=%fΩ\n",Z2B)
Reqpu=0.012 //percent resistance in ohms
Xeqpu=0.05 //percent reactance in ohms
Zeqpu=Reqpu+(%i*Xeqpu)
mprintf("Zeqpu=%f Ω  with phase angle of %f degrees\n",abs(Zeqpu),(acos(Reqpu/(abs(Zeqpu))))*180/%pi)//ans may vary due to roundoff error,conversion of radians to degree
Zeq2=Z2B*Zeqpu//ans may vary due to roundoff error
mprintf("Zeq2=%fΩ with a phase angle of %f degrees\n",abs(Zeq2),(acos(real(Zeq2)/abs(Zeq2)))*180/%pi)//ans may vary due to roundoff error,conversion of radians to degree
pf=0.8 //power factor of load
I2=IL2B*exp(%i*(-1)*acos(pf))//ans may vary due to roundoff error,-1 comes due to the lagging power factor
mprintf("I2=%fA with a phase angle of %f degress\n",abs(I2),(-1)*(acos(real(I2)/abs(I2)))*180/%pi)//ans may vary due to roundoff error,conversion of radians to degree
V2=120 //seconadry voltage in volts
V1=a*(V2+(I2*Zeq2))//ans may vary due to roundoff error
mprintf("V1=%fV with a phase angle of %f degrees\n",abs(V1/a),(acos(real(V1)/abs(V1)))*180/%pi)//ans may vary due to roundoff error,conversion of radians to degree
Regulation=(abs(V1/a)-V2)/V2//ans may vary due to roundoff error
mprintf("Regulation=%f\n",Regulation)
//sol 2(per unit method)
I2pu=exp(%i*(-1)*acos(pf)) //seconadry current in per unit in amperes
V2pu=1 //seconadry voltage in per unit in volts
V1pu=V2pu+(I2pu*Zeqpu)
mprintf("V1pu=%fV with a phase angle of %f degrees\n",abs(V1pu),(acos(real(V1pu)/abs(V1pu)))*180/%pi)//ans may vary due to roundoff error
Regulation=(abs(V1/(a*V2B))-(V2B/V2B))/(V2B/V2B)
mprintf("Regulation=%f\n",Regulation)//ans may vary due to roundoff error












