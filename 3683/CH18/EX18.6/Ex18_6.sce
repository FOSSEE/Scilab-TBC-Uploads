b=250//width, in mm
D=450//depth, in mm
c=50//cover, in mm
Asc=1472//in sq mm
Ast=Asc
fck=15//in MPa
fcc=0.446*fck//in MPa
fy=250//in MPa
Es=2*10^5//in MPa
ey=0.87*fy/Es//strain in mild steel at yield point
fs=0.87*fy//stress in mild steel at yield point, in MPa

//xu=infinity
Pu1=(0.446*fck*(b*D-Asc-Ast)+(Asc+Ast)*fs)/10^3//in kN
Mu1=0//in kN-m

//xu=1.5 D
xu=1.5*D//in mm
m=0.43*D//in mm
esc1=0.002*(xu-c)/(xu-m)
if(esc1<=ey)
    fsc1=esc1/ey*fs
else
    fsc1=fs
end
esc2=0.002*(xu-D+c)/(xu-m)//>ey
if(esc2<=ey)
    fsc2=esc2/ey*fs
else
    fsc2=fs
end
//stress block parameters for xu / D = 1.5
n=0.422
l=0.48
A=n*fck*D//area of stress block
r=l*D//distance of c.g.
Pu2=(A*b+Asc*fsc1+Ast*fsc2)/10^3//in kN
Mu2=(A*b*(D/2-r)+Asc*fsc1*(D/2-c)-Ast*fsc2*(D/2-c))/10^6//in kN-m

//xu=1.3 D
xu=1.3*D//in mm
m=0.43*D//in mm
esc1=0.002*(xu-c)/(xu-m)
if(esc1<=ey)
    fsc1=esc1/ey*fs
else
    fsc1=fs
end
esc2=0.002*(xu-D+c)/(xu-m)//>ey
if(esc2<=ey)
    fsc2=esc2/ey*fs
else
    fsc2=fs
end
//stress block parameters for xu / D = 1.3
n=0.409
l=0.468
A=n*fck*D//area of stress block
r=l*D//distance of c.g.
Pu3=(A*b+Asc*fsc1+Ast*fsc2)/10^3//in kN
Mu3=(A*b*(D/2-r)+Asc*fsc1*(D/2-c)-Ast*fsc2*(D/2-c))/10^6//in kN-m

//xu=1.2 D
xu=1.2*D//in mm
m=0.43*D//in mm
esc1=0.002*(xu-c)/(xu-m)
if(esc1<=ey)
    fsc1=esc1/ey*fs
else
    fsc1=fs
end
esc2=0.002*(xu-D+c)/(xu-m)//>ey
if(esc2<=ey)
    fsc2=esc2/ey*fs
else
    fsc2=fs
end
//stress block parameters for xu / D = 1.2
n=0.399
l=0.458
A=n*fck*D//area of stress block
r=l*D//distance of c.g.
Pu4=(A*b+Asc*fsc1+Ast*fsc2)/10^3//in kN
Mu4=(A*b*(D/2-r)+Asc*fsc1*(D/2-c)-Ast*fsc2*(D/2-c))/10^6//in kN-m

//xu=1.1 D
xu=1.1*D//in mm
m=0.43*D//in mm
esc1=0.002*(xu-c)/(xu-m)
if(esc1<=ey)
    fsc1=esc1/ey*fs
else
    fsc1=fs
end
esc2=0.002*(xu-D+c)/(xu-m)//>ey
if(esc2<=ey)
    fsc2=esc2/ey*fs
else
    fsc2=fs
end
//stress block parameters for xu / D = 1.1
n=0.384
l=0.443
A=n*fck*D//area of stress block
r=l*D//distance of c.g.
Pu5=(A*b+Asc*fsc1+Ast*fsc2)/10^3//in kN
Mu5=(A*b*(D/2-r)+Asc*fsc1*(D/2-c)-Ast*fsc2*(D/2-c))/10^6//in kN-m

//xu = D
xu=D//in mm
m=0.43*D//in mm
esc1=0.002*(xu-c)/(xu-m)
if(esc1<=ey)
    fsc1=esc1/ey*fs
else
    fsc1=fs
end
esc2=0.002*(xu-D+c)/(xu-m)//>ey
if(esc2<=ey)
    fsc2=esc2/ey*fs
else
    fsc2=fs
end
//stress block parameters for xu / D = 1
n=0.361
l=0.416
A=n*fck*D//area of stress block
r=l*D//distance of c.g.
Pu6=(A*b+Asc*fsc1+Ast*fsc2)/10^3//in kN
Mu6=(A*b*(D/2-r)+Asc*fsc1*(D/2-c)-Ast*fsc2*(D/2-c))/10^6//in kN-m

//xu=400 mm
xu=400//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu7=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu7=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=375 mm
xu=375//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu8=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu8=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=350 mm
xu=350//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu9=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu9=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=325 mm
xu=325//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu10=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu10=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=300 mm
xu=300//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu11=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu11=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=275 mm
xu=275//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu12=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu12=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=250 mm
xu=250//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu13=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu13=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=225 mm
xu=225//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu14=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu14=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=200 mm
xu=200//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu15=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu15=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=150 mm
xu=150//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu16=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu16=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=100 mm
xu=100//in mm
esc=0.0035*(xu-c)/xu
if(esc<=ey)
    fsc=esc/ey*fs
else
    fsc=fs
end
est=0.0035*(D-xu-c)/xu
if(est<=ey)
    fst=est/ey*fs
else
    fst=fs
end
Pu17=(0.36*fck*b*xu+Asc*fsc-Ast*fst)/10^3
Mu17=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*fsc*(D/2-c)+Ast*fst*(D/2-c))/10^6

//xu=0.531 d
d=D-c
xu=0.531*d
Pu18=0//in kN
Mu18=0.149*fck*b*d^2/10^6//in kN-m

Pu=[Pu1 Pu2 Pu3 Pu4 Pu5 Pu6 Pu7 Pu8 Pu9 Pu10 Pu11 Pu12 Pu13 Pu14 Pu15 Pu16 Pu17 Pu18]
Mu=[Mu1 Mu2 Mu3 Mu4 Mu5 Mu6 Mu7 Mu8 Mu9 Mu10 Mu11 Mu12 Mu13 Mu14 Mu15 Mu16 Mu17 Mu18]
xtitle('P-M Interaction Diagram', 'Mu (kN-m)', 'Pu (kN)')
plot(Mu,Pu)
