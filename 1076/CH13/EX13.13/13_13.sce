clear
clc

Pi=1
Pma=1.75
Pmb=.4
Pmc=1.25

d0=asin(Pi/Pma)
dm=%pi - asin(Pi/Pmc)

dcc=acosd(((Pi*(dm-d0))- (Pmb*cos(d0))+ (Pmc*cos(dm)))/(Pmc-Pmb))
mprintf("Critical Clearing angle = %.1f deg", dcc)
