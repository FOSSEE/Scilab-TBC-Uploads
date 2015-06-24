
clc; funcprot(0);
// Initialization of Variable
f=152.4;//focal length in mm
b=74.25;//distance in mm
ht=100.0;//height in m
H=700.0;//flying height
//calculation
B=b*H/f;
pb=f*B/H;
pt=f*B/(H-ht);
delp=pt-pb;
disp(round(delp*100)/100,"error due to parallax in mm")
ht=delp/pt*(H);
disp(ht,"height of chimney in m")
clear()
