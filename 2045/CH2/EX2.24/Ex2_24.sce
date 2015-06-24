//pagenumber 116 example 24
quantg=4*10^22;//atoms per cubic centimetre
quants=5*10^22;//atoms per cubic centimetre
w=2.5*10^13;//per cubic centimetre
w1=1.5*10^10;//per cubic centimetre
for q=[quantg quants]
    na=2*q/(10^8);
    nd=500*na;
    if q==quantg then
        w=w;
        voltag=0.026*log(na*nd/w^2);
        disp("potential germanium   =   "+string((voltag))+"volt");
    end
    if q==quants then
        w=w1;
        voltag=0.026*log(na*nd/w^2);
        disp("potential silicon   =   "+string((voltag))+"volt");
    end

end
