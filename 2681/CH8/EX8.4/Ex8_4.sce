//gain of paraboloid
//given
clc
Da=2//metre
f=2d+9//hertz
v=3d+8//m/s
lemda=v/f
gp=6.4*(Da/lemda)^2
gp_decibles=10*log10(gp)//changing to decibles
disp(gp_decibles,'the gain of paraboloid in decibles')//db
//ERROR  in the printing of the book
