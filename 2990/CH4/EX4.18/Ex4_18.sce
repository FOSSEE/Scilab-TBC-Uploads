
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
//parta
GMT=0;//GMT in hr
ET=10.0/60+1.8/3600;//ET in hrs
//calculaion
GAT=GMT+ET;
GAT=degtodms(GAT);
disp(GAT,"GAT in hr min sec");
//partb
GMT=0;//GMT in hr
ET=-13.0/60-28.5/3600;//ET in hrs
//calculaion
GAT=GMT+ET+24;
GAT=degtodms(GAT);
disp(GAT,"GAT in hr min sec");
clear()
