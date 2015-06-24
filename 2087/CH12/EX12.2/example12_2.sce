

//example 12.2
//calculate uplift pressure and exit gradient
//check whether section is safe against overturning and piping
clc;funcprot(0);
//given
b=54;            //width of section
D1D2=16;         //distance between points D1 and D2
D2D3=37;         //distance between points D2 and D3

//first pipe line
//taking data from figure
d=105-97;
b1=0.5;
alpha=b/d;
//from the curves we get
fic1=0.665;
fid1=0.76;
fie1=1;
t=105-104;                      //floor thickness
corec=(fid1-fic1)*100*t/d;          //correction for floor thickness
//for pile no. 2
D=104-97;
d=104-97;
bdash=16;
C=19*(D/bdash)^0.5*(d+D)/b;    //correction for pile no. 2
fic1=fic1*100+corec+C;         //corrected pressures

//intermedite pipe line
d=105-97;
b1=16.5;
alpha=b/d;
r=b1/b;               //ratio b1/b
//from the curves we get
fic2=0.52;
fie2=0.725;
fid2=0.615;
corec_c1=(fid2-fic2)*100*t/d;
corec_e1=(fie2-fid2)*100/d;

//for pile no. 1
C1=C;
d=104-97;
bdash=37;
D=104-95;
C2=19*(D/bdash)^0.5*(d+D)/b;
//correction due to slope
corec_e2=3.3;                //from table 12.4
//correction is negative due to upwrd slope
l=4;               //horizontal length of slope
corec_c2=corec_e2*l/bdash;

fie2=fie2*100-corec_e1-corec_e2;
fic2=fic2*100+corec_c1+C2-corec_c2;

//pile no. 3 at d/s end
d=103.5-95;
alpha_=d/b;
//for curves
fie3=0.35;fid3=0.242;
corec_t=(fie3-fid3)*100*(103.5-102)/d;

//correction for interference at pile no. 2
d=102-95;
D=102-97;
C3=19*(D/bdash)^0.5*(d+D)/b;
fie3=fie3*100-corec_t-C3;

point=['C1' 'C2' 'E2' 'E3'];            //Point
P=[fic1 fic2 fie2 fie3];                //pressure percent
P_=[3.55 2.78 3.39 1.58];               //pressure head
mprintf("Points         Pressure percent        Pressure head");
for i=1:4
    P(i)=round(P(i)*10)/10;
    mprintf("\n%s                %f               %f",point(i),P(i),P_(i));
end

//check for floor thickness
Pa=P_(2)-((P_(2)-P_(4))*6.5/37);
Pb=P_(2)-((P_(2)-P_(4))*24/37);
Pc=P_(2)-((P_(2)-P_(4))*30/37);
rho=2.24;                              //specific gravity of concrete
ta=Pa/(rho-1);
tb=Pb/(rho-1);
tc=Pc/(rho-1);
ta=round(ta*100)/100;
tb=round(tb*100)/100;
tc=round(tc*100)/100;
mprintf("\n\nThickness required at A=%f m.",ta);
mprintf("\nThickness required at B=%f m.",tb);
mprintf("\nThickness required at C=%f m.",tc);
t=103.5-102;
mprintf("\nThickness provided=%f m.",t);
mprintf("\nFloor thickness at B and C are adequate");

//exit gradient
H=108.5-103.5;               //seepage head
d=103.5-95;                 //depth cut-off
//from exit gradient curve
alpha=6.35;
lambda=(1+(1+alpha^2)^0.5)/2;
Ge=H/(d*%pi*lambda^0.5);
mprintf("\n\nexit gradient=%f.",Ge);
mprintf("\n it is less than permissible exit gradient  < 1/6\nHence safe..");
