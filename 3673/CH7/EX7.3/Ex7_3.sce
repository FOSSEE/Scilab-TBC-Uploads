//Example 7_3 page no:257
clc
mag1=1.67//magnitude for current
mag2=-1.25
ang1=-90//angle for current
ang2=90
mag=mag1/mag2
ang=ang1-ang2
disp(mag,"magnitude for Vb is(in volt)")
disp(ang,"degree for Vb is (in degree)")
mag1=1.67//magnitude for current
mag2=0.33
ang1=-90-14.5//angle for current
mag=mag1/mag2
disp(mag,"magnitude for Va is(in volt)")
disp(ang1,"degree for Va is (in degree)")
//Va value is calculated wrongly in text book
