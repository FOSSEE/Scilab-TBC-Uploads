//Example 7_5 page no:263
clc;
Vmag=50;
Vang=0;
Rmag=9.22;
Rang=77.47;
Imag=Vmag/Rmag;
Iang=Vang-Rang;
V1mag=5.42*5.38;//voltage across (2+j5)ohm
V1ang=-77.47+68.19;
I2mag=(20*4)/9.22;
I2ang=120-77.47;
V2mag=I2mag*5.38;//voltage across (2+j5)ohm due to current I2 is
V2ang=42.53+68.19;
V1rel=V1mag*(cosd(V1ang));
V1img=V1mag*(sind(V1ang));
V2rel=V2mag*(cosd(V2ang));
V2img=V2mag*(sind(V2ang));
Vrel=V1rel+V2rel;
Vimg=V1img+V2img;
Vfmag=sqrt((Vrel*Vrel)+(Vimg*Vimg));
Vfang=atand(Vimg/Vrel);
disp(Vfmag,"magnitude of voltage across(2+5j)ohm is(in V)");
disp(Vfang,"angle of voltage across (2+5j)ohm is(in degree)");
