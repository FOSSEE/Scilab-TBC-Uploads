

//example 5.10
//calculate culturable area
clc;
//given
Q=150;           //discharge from tubewell
t=4000;          //working period of tubewell
I=0.45;          //intensity of irrigation
d=0.38;          //average depth of rabi and kharif crop
V=Q*t;
A=V/d;
CA=A/(I*10000);
CA=round(CA);
mprintf("culturable area=%f hectares.",CA);

