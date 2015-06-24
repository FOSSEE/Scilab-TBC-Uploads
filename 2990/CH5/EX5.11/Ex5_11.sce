
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
z=51+47.0/60+18.0/3600//zenith distance
p=88+57.0/60+57.0/3600//polar distance
c=61+27.0/60+55.0/3600//co-latitude
//calculation
s=(z+p+c)/2;
A=2*atan(sqrt(sin((s-z)*%pi/180)/sin(s*%pi/180)*sin((s-c)*%pi/180)/sin((s-p)*%pi/180)));
A=A*180/%pi;
TB=360-A-165-18.0/60-20.0/3600;
TB=degtodms(TB);
disp(TB,"true bearing TB in degree,minites,seconds respectively");
disp("answer varies slightly due to round off error")
clear()
