
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
Long=30.0;//longitude in degrees
GAT=13+15.0/60+10.0/3600;//GAT in hr
ET=6.0/60+15.35/3600+0.3/3600*1.25278;//ET in hr
//calculation
LMT=GAT+ET-Long/15.0;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec");
clear()
