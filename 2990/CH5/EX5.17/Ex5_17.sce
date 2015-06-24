
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
GMT=16+22.0/60+55.0/3600;
ET=3.0/60+43.0/3600;
c=90-42-20.0/60;
p=90-18-45.0/60-50.0/60;
z=90-43-38.0/60;
//calculation
H=acos(cos(z*%pi/180)/sin(c*%pi/180)/sin(p*%pi/180)-1/tan(c*%pi/180)*1/tan(p*%pi/180));
H=H*180/%pi;
LAT=12-H/15;
LMT=LAT-ET;
Long=GMT-LMT;
Long=Long*15;
Long=degtodms(Long);
disp(Long,"Longitude in degree,minites,seconds respectively in west");
disp("the answer varies slightly due to round off error");
clear()
