
clc; funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
b=40.0;//distance in degrees
p=6.0;//disatnce in degrees
//calculation
a=%pi/2-asin(cos(b*%pi/180)*cos(p*%pi/180));
Bc=a*180/%pi-b;
BC=Bc*1.853*60;
B=asin(sin(b*%pi/180)/sin(a))
B=degtodms(B*180/%pi);
disp(round(BC*100)/100,"distance BC in km");
disp(B,"angle of B deg min sec");
clear()
