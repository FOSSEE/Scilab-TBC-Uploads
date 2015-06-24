
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
alpha=40+52.0/60+10.0/3600//latitude in hr
//calculation
C1=-58.0/3600/tan(alpha*%pi/180);
CL=alpha+C1;
CL=degtodms(CL);
disp(CL,"corrected latutude in deg,min,sec respectively");
clear()
