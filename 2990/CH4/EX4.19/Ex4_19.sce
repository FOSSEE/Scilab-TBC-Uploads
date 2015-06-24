
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
ET1=-3.0/60-51.4/3600//ET at april 2 in hr
ET2=-3.0/60-33.5/3600//ET at april 3 in hr
//calculation
dET=(ET2-ET1)*18.0/24//change in ET
ET=ET1+dET;
ET=degtodms(ET);
disp(ET,"ET (-ve) in hr min s");
clear()
