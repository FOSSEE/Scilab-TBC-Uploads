
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
GMT=18+30.0/60;//GMT in hr
ET=1.0/60+25.4/3600-0.67*6.5/3600;//ET in hr
//calculation
GAT=GMT+ET;
GAT=degtodms(GAT)
disp(GAT,"GAT in hr min sec");
clear()
