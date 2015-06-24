
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=(round(sd*100)/100)
      dms=[d m sd]
endfunction
Long=75.0//longitude in degrees
GST=11+40.0/60+32.4/3600;//GST in degrees
RA=12+25.0/60+18.35/3600;//RA in degrees
GMT=15+45.0/60+25.3/3600;//GMT in degrees
delta=22+6.0/60+32.5/3600;//angle in degrees
//calculation
e1=Long/15*9.8565/3600;
LSTofLMM=GST-e1;
LMT=GMT+Long/15;
SIT=LMT+LMT*9.8565/3600//sidereal time interval
LHA=SIT+LSTofLMM;
H=RA+24-LHA;
H=H*15;
B=atan(tan(delta*%pi/180)*tan(H*%pi/180));
B=B*180/%pi;
A=atan(tan(H*%pi/180)*cos(B*%pi/180)/sin((B-32-15.0/60)*%pi/180))
A=A*180/%pi;
TB=360+A-135-15.0/60-20.0/3600;
TB=degtodms(TB);
disp(TB,"true bearing TB in degree,minites,seconds respectively");
disp("there is slight difference in the answers due to rounding off error in the book");
clear()
