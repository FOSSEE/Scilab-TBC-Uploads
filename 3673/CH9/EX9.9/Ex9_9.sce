//Example 9_9 page no:359
clc;
Z2mag=5;
Z2ang=53.13;
Z1mag=Z2mag/3;
Z1ang=Z2ang;
Z1rel=Z1mag*cosd(Z1ang);
Z1img=Z1mag*sind(Z1ang);
Z1=Z1rel+(%i*Z1img);
disp(Z1,"the impedence for star netwrok Z1 is(in ohm)");
