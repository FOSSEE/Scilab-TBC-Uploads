//Chapter 25 Ex 10

clc;
close;
clear;
scube=15; lvessel=20; bvessel=15;    //all in cemtimeter
volcube=(scube)^3;
areavessel=lvessel*bvessel;
rise=volcube/areavessel;
mprintf("The rise in water level is %.2f cm",rise);
