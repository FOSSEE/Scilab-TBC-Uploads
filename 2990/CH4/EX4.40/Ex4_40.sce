
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
theta=53+20.0/60;//theta in degrees
delta=53+20.0/60;//delta in degrees
//calculation
alpha=theta+delta-90;
alpha=degtodms(alpha);
disp(alpha,"altitude in deg min sec");
clear()
