
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
theta=54+30.0/60//latitude in degrees
delta=62+12.0/60+21.0/3600//declination in degrees
//calculation
alpha=asin(sin(theta*%pi/180)/sin(delta*%pi/180));
A1=acos(tan(theta*%pi/180)/tan(alpha));
A1=A1*180/%pi;
TB=360-A1-65-18.0/60-42.0/3600;
TB=degtodms(TB);
alpha=degtodms(alpha*180/%pi);
H=acos(tan(theta*%pi/180)/tan(delta*%pi/180));
H=degtodms(H*180/%pi);
disp(TB,"true bearing in degree,minites,seconds respectively");
disp(alpha,"altitude in degree,minites,seconds respectively");
disp(H,"hour angle in degree,minites,seconds respectively");
disp("the answer for hour angle in the textbook is wrong");
clear()
