
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100;
    if sd==60.0 then
        sd=0;
        m=m+1;
    end
    dms=[d m sd]
endfunction
alpha1=30+45.0/60+25.0/3600;//angle in degrees
alpha2=40+48.0/60+30.0/3600;//angle in degrees
//calculation
e1=-58/3600/tan(alpha1*%pi/180)// error 1
e2=-58/3600/tan(alpha2*%pi/180)// error 2
theta=(alpha1+alpha2+e1+e2)/2;
theta=degtodms(theta)
disp(theta,"latitude in degree,minites,seconds respectively");
clear()
