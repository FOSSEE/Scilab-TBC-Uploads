//Initilization of variables
//length matrix
L1=[0,4,6] //m
//Bending moment matrix
B=[0,400,0] //N.m
//Shear force plotting
//Here the left side and right side lengths are considered as close as 4 to keep up with right and left distinctions
L=[0,3.999,4,5.99998,6]
S=[100,100,-200,-200,0]
//Calculations cum Result
subplot(221)
plot(L1,B)
xtitle("Bending Moment Diagram","Span","Bending Moment")
subplot(222)
plot(L,S)
mtlb_hold on
plot(L, zeros(length(L),1))
xtitle("Shear Force Diagram","Span","Shear Force")