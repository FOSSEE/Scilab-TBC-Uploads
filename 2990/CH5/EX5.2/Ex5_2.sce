
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
alpha=30+32.0/60+18.0/3600//latitude in hr
d=16.0/60+2.85/3600//semi-diameter of sun in hr
//calculation
C1=-58.0/3600/tan(alpha*%pi/180); 
C2=8.8/3600*cos(alpha*%pi/180);   
C3=d;      
CL=alpha+C1+C2+C3;
CL=degtodms(CL);
disp(CL,"corrected latutude in deg,min,sec respectively");
clear()
