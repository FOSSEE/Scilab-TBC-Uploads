
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
alpha=44+12.0/60+30.0/3600;//angle in degrees
d=15.0/60+45.86/3600//diameter correction
Long=7+20.0/60+15.0/3600//longitude in degrees
//calculation
alpha=alpha+d-58/3600/tan(alpha)+8.8/3600*cos(alpha);
GAT=Long/15;
e2=6.82/3600*GAT;
delta=22+18.0/60+12.8/3600+e2;
theta=delta+90-alpha;
theta=degtodms(theta);
disp(theta,"altitude in degree,minites,seconds respectively");
disp("answer varies slightly due to round off error");
clear()
