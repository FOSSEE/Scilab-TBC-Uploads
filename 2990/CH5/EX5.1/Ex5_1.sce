
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
l1=11.5;//position
l2=13.5;//position
r1=8.5;//position
r2=6.5;//position
alpha=3+15.0/60+28.0/3600;//angle in hr
OB=121+45.0/60+18.0/3600;//angle in hr
OA=43+25.0/60+20.51/3600;//angle in hr
//calculation
gamma=(l1+l2)/4-(r1+r2)/4;
e=gamma*tan(alpha*%pi/180)/3600//correction
CH=OB-OA-e;
CH=degtodms(CH);
disp(CH, "corrected horizontal angle in deg,min,sec respectively");
clear()
disp("answer varies slightly due to round off error")
