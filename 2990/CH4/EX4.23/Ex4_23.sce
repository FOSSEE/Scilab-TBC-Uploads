
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
ST=7+45.0/60+50.0/3600;//solar time in hr
R=9.8565;//retardation in s
//calculation
tr=R/3600*ST;
ST=ST+tr;
ST=degtodms(ST);
disp(ST,"solar mean time in hr min sec");
clear()
