//Replace curr source by voltage source
Ics=1/1000
R=100*1000
V=Ics*R

Vc_0m=25/(25+100)*V
disp(Vc_0m)

Vc_0p=Vc_0m
disp(Vc_0p)

Vc_inf=(V-10)*25/(100+25)
disp(Vc_inf)