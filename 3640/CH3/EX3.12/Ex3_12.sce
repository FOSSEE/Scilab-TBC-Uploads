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
kVAL=100 //kva required for supply
kVAM=20 //kVA rating of motor of the air conditioning compressor
V=220 //supply voltage in volts
IL3=(kVAM*1000)/(sqrt(3)*V)
mprintf("IL3=%fA=|I2| of small transformer\n",IL3)
//abc sequence
ph1=36.9 //phase angle of motor current
IL3=IL3*exp(%i*(-1)*ph1*%pi/180)//-1 comes due to the lagging power factor,conversion of degree to radian for calculation
mprintf("Il3=%fA with a phase angle of %f degrees\n",abs(IL3),(-1)*ph1)//-1 comes due to the lagging power factor
disp('IL3='+complexstring(IL3)+'A')
ph2=30-25.8 //phase angle of Il1
IL1=((kVAL*1000)/V)*exp(%i*(ph2)*%pi/180)
disp('IL1='+complexstring(IL1)+'A')
mprintf("IL1=%f with a phase angle of %f degrees\n",abs(IL1),ph2)
I2=IL3+IL1
disp('I2='+complexstring(I2)+'A')
mprintf("I2=%fA with a phase angle of %f degrees\n",abs(I2),(acos(real(I2)/abs(I2)))*180/%pi)
//acb sequence
ph3=30+25.8 //phase angle of Il1 in degrees
IL1=abs(IL1)*exp(%i*(-1)*(ph3)*%pi/180) //-1 comes due to lagging power factor
disp('IL1='+complexstring(IL1)+'A')
mprintf("IL1=%f with a phase angle of %f degrees\n",abs(IL1),(-1)*ph3)//-1 comes due to the lagging power factor
I2=IL3+IL1
disp('I2='+complexstring(I2)+'A')
mprintf("I2=%fA with a phase angle of %f degrees\n",abs(I2),(acos(real(I2)/abs(I2)))*180/%pi)





