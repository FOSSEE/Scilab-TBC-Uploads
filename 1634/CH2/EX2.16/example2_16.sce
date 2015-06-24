

//exapple 2.16 
clc; funcprot(0);
// Initialization of Variable
//part1
f=30/100;//focal length
h=400;//elevation of datum
r=12000;//ratio
s=120*20;
L2=24000;
L1=30000;
Pl=0.6;//longitudinal lap
Pw=0.3;//side lap
H=h+r*f;
disp(H,"height above datum in (m):");
//part2
W=(1-Pw)*s;
disp(W,"ground width covered in each photograph (m):")
//part3
N2=L2/((1-Pw)*s)+1;
A2=round(N2);
if N2-A2<0 then
   N2=A2
else
    N2=A2+1;
end
disp(N2,"no. of flights required")
//part4
Asf=L2/(N2-1);//actual spacing between flights
//part5
Sfl=Asf/600;//spacing of flight lines
//part6
gd=(1-Pl)*s;//ground distance
//part7
Ei=gd/55.5;//exposure interval
Ei=round(Ei);
//part8
Ags=55.56*Ei;//adgusted ground distance
//part9
N1=L1/Ags+1;
A1=round(N1);
if N1-A1<0 then
   N1=A1
else
    N1=A1+1;
end
N=N1*N2;
disp(N,"no. of photographs to be taken");
