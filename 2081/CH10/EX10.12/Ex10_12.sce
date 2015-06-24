spfl=810*10^6
spfu=826*10^6
sprl=940*10^6
spru=956*10^6
BWf=spfu-spfl
BWr=spru-sprl

BWc=10/100*BWf//BWf=BWr(universal standard)
BWv=BWf-BWc
nsc=1150
BWmax=BWv/nsc
SPef=1.68
CDRmax=BWmax*SPef
FECcr=0.5
DRnmax=FECcr*CDRmax
disp(DRnmax,'there is a speech coder with a max. data rate of in bps')

