//Example 9_20 page no:380
clc;
Zr=4+(%i*8);
Zrmag=8.944;
Zrang=63.4;
Zy=3+(%i*4);
Zymag=5;
Zyang=53.1;
Zb=15+(%i*20);
Zbmag=25;
Zbang=53.1;
I2ang=136.58;
//calculating Zry,Zyb,Zbr
ZrZymag=(Zrmag*Zymag);
ZrZyang=(Zrang+Zyang);
ZrZyreal=(ZrZymag)*cosd(ZrZyang);
ZrZyimg=(ZrZymag)*sind(ZrZyang);
ZyZbmag=(Zymag*Zbmag);
ZyZbang=(Zyang+Zbang);
ZyZbreal=(ZyZbmag)*cosd(ZyZbang);
ZyZbimg=(ZyZbmag)*sind(ZyZbang);
ZbZrmag=(Zbmag*Zrmag);
ZbZrang=(Zbang+Zrang);
ZbZrreal=(ZbZrmag)*cosd(ZbZrang);
ZbZrimg=(ZbZrmag)*sind(ZbZrang);
Zrybreal=ZrZyreal+ZyZbreal+ZbZrreal;
Zrybimg=ZrZyimg+ZyZbimg+ZbZrimg;
Zrybmag=sqrt(Zrybreal^2+Zrybimg^2);
Zrybang=atand(Zrybimg/Zrybreal);
Zrymag=(Zrybmag)/Zbmag;
Zryang=(Zrybang-Zbang);
Zybmag=(Zrybmag)/Zrmag;
Zybang=(Zrybang-Zrang);
Zbrmag=(Zrybmag)/Zymag;
Zbrang=(Zrybang-Zyang);
//taking Vry as reference Vry=400<0;
Vrymag=400;
Vryang=0;
Vybmag=400;
Vybang=-120;
Vbrmag=400;
Vbrang=-240;
//calculating the phase currents
Irmag=Vrymag/Zrymag;
Irang=Vryang-Zryang;
Iymag=Vybmag/Zybmag;
Iyang=Vybang-Zybang;
Ibmag=Vbrmag/Zbrmag;
Ibang=Vbrang-Zbrang;
//calculating the line currents
Irreal=Irmag*cosd(Irang);
Irimg=Irmag*sind(Irang);
Iyreal=Iymag*cosd(Iyang);
Iyimg=Iymag*sind(Iyang);
Ibreal=Ibmag*cosd(Ibang);
Ibimg=Ibmag*sind(Ibang);
I1real=Irreal-Ibreal;
I1img=Irimg-Ibimg;
I2real=Iyreal-Irreal;
I2img=Iyimg-Irimg;
I3real=Ibreal-Iyreal;
I3img=Ibimg-Iyimg;
I1mag=sqrt(I1real^2+I1img^2);
I1ang=atand(I1img/I1real);
I2mag=sqrt(I2real^2+I2img^2);
I3mag=sqrt(I3real^2+I3img^2);
I3ang=atand(I3img/I3real);
disp(I1mag,"the magnitude of I1 current is (in A)");
disp(I1ang,"the angle of I1 current is (in degree)");
disp(I2mag,"the magnitude of I2 current is (in A)");
disp(I2ang,"the angle of I2 current is (in degree)");
disp(I3mag,"the magnitude of I3 current is (in A)");
disp(I3ang,"the angle of I3 current is (in degree)");
//calculating the voltage across each phase
Vrmag=I1mag*Zrmag;
Vrang=I1ang+Zrang;
disp(Vrmag,"the magnitude of V across R phase is (in V)");//in text book the values are rounded off but here values stored in variables are not altered
disp(Vrang,"the angle of V across R phase is (in V)");
Vymag=I2mag*Zymag;
Vyang=I2ang+Zyang;
disp(Vymag,"the magnitude of V across R phase is (in V)");
disp(Vyang,"the angle of V across R phase is (in V)");
Vbmag=I3mag*Zbmag;
Vbang=I3ang+Zbang;
disp(Vbmag,"the magnitude of V across R phase is (in V)");//in text book the values are rounded off but here values stored in variables are not altered
disp(Vbang,"the angle of V across R phase is (in V)");
//in text book values of current and impedence are rounded off hence values vary slightly
