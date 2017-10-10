//Example 9_21 page no:383
clc;
//the phase voltages are
Vromag=400/sqrt(3);
Vroang=-30
Vyomag=400/sqrt(3);
Vyoang=-150;
Vbomag=400/sqrt(3);
Vboang=-270;
//the admitance of the branches are
Yrmag=0.11;
Yrang=-63.40;
Yymag=0.2;
Yyang=-53.1;
Ybmag=0.04;
Ybang=-53.1;
VroYrmag=Vromag*Yrmag;
VroYrang=Vroang+Yrang;
VyoYymag=Vyomag*Yymag;
VyoYyang=Vyoang+Yyang;
VboYbmag=Vbomag*Ybmag;
VboYbang=Vboang+Ybang;
//converting to rectangular form
VroYrreal=VroYrmag*cosd(VroYrang);
VroYrimg=VroYrmag*sind(VroYrang);
VyoYyreal=VyoYymag*cosd(VyoYyang);
VyoYyimg=VyoYymag*sind(VyoYyang);
VboYbreal=VboYbmag*cosd(VboYbang);
VboYbimg=VboYbmag*sind(VboYbang);
VrybYrybreal=VroYrreal+VyoYyreal+VboYbreal;
VrybYrybimg=VroYrimg+VyoYyimg+VboYbimg;
VrybYrybmag=sqrt(VrybYrybreal^2+VrybYrybimg^2);
VrybYrybang=atand(VrybYrybimg,VrybYrybreal);
VrybYrybang=360+VrybYrybang;//converting to positive value;
Yrreal=Yrmag*cosd(Yrang);
Yrimg=Yrmag*sind(Yrang);
Yyreal=Yymag*cosd(Yyang);
Yyimg=Yymag*sind(Yyang);
Ybreal=Ybmag*cosd(Ybang);
Ybimg=Ybmag*sind(Ybang);
Yrybreal=Yrreal+Yyreal+Ybreal;
Yrybimg=Yrimg+Yyimg+Ybimg;
Yrybmag=sqrt(Yrybreal^2+Yrybimg^2);
Yrybang=atand(Yrybimg,Yrybreal);
//substituting the values in the millmans theorem
Voomag=VrybYrybmag/Yrybmag;//the results of other variables are rounded off in text book so result varie by 0.2V
Vooang=VrybYrybang-Yrybang;
Vooreal=Voomag*cosd(Vooang);
Vooimg=Voomag*sind(Vooang);
//calculating the three load phase voltages
Vroreal=Vromag*cosd(Vroang);
Vroimg=Vromag*sind(Vroang);
Vyoreal=Vyomag*cosd(Vyoang);
Vyoimg=Vyomag*sind(Vyoang);
Vboreal=Vbomag*cosd(Vboang);
Vboimg=Vbomag*sind(Vboang);
Vro1real=Vroreal-Vooreal-1;
Vro1img=Vroimg-Vooimg-1;
Vyo1real=Vyoreal-Vooreal-1;
Vyo1img=Vyoimg-Vooimg;
Vbo1real=Vboreal-Vooreal;
Vbo1img=Vboimg-Vooimg;
Vro1mag=sqrt(Vro1real^2+Vro1img^2);
Vro1ang=atand(Vro1img,Vro1real);
Vyo1mag=sqrt(Vyo1real^2+Vyo1img^2);
Vyo1ang=atand(Vyo1img,Vyo1real);
Vyo1ang=360+Vyo1ang;//converting to positive value
Vbo1mag=sqrt(Vbo1real^2+Vbo1img^2);
Vbo1ang=atand(Vbo1img,Vbo1real);
disp(Vro1mag,"the magnitude of load phase voltage Vro is (in V)");
disp(Vro1ang,"the angel of load phase voltage Vro is (in degree)");
disp(Vyo1mag,"the magnitude of load phase voltage Vyo is (in V)");
disp(Vyo1ang,"the angel of load phase voltage Vyo is (in degree)");
disp(Vbo1mag,"the magnitude of load phase voltage Vbo is (in V)");
disp(Vbo1ang,"the angel of load phase voltage Vbo is (in degree)");
//the results varies by 0.2 hence in text book the intermidate values are rounded off but here variables are used without alteration
