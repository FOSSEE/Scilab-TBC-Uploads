//Initilization of variables
w=196 //N/m
M_app=4000 //N.m
L=6 //m
//Calculations
//Taking Moment about Point L and equating it to 0
R_r=(M_app+w*L*L*0.5)/(3*L) //N
//Taking Moment about Point R and equating it to 0
R_l= ((((2*L)+(L/2))*(w*L))-(M_app))/(3*L) //N
//finding point of zero shear
a=R_l/w
//defining x
x0=[0,18]
x=[0,0.5,1,1.5,2,2.5,3,3.5,a,4,4.5,5,5.5,6] //for 0<x<6
x1=[6,12] //for6<x<12
x2=[12,18] //for 12<x<18
xv=[6,12,18] //specially for shear force
xo=[12.001,12.002] //Straight line plot
//Shear Force Calculations
//Summing forces in vertical direction and equating to 0
V1=R_l-w*x //N for 0<x<6
V2=R_l-w*L //N for 6<x<18
//Bending Moment Calculations
M1=R_l*x-(w*x^2*0.5) //N.m for 0<x<6
M2=R_l*x1-((w*L)*(x1-3)) //N.m for 6<x<12
M3=R_l*x2-((w*L)*(x2-3))+M_app //N.m for 12<x<18
Mo=[-1464.8652,2509.3333]
//Maximum bending moment
M_max=R_l*a*0.5 //N.m
//Plotting
subplot(221)
plot(x,V1)
mtlb_hold on
plot(xv,V2*ones(length(xv),1))
plot(x0,zeros(length(x0),1))
mtlb_hold off
xtitle('Shear Force Diagram',"Span","Shear Force")
subplot(222)
plot(x,M1)
mtlb_hold on
plot(x1,M2)
plot(x2,M3)
plot(x0,zeros(length(x0),1))
plot(xo,Mo)
mtlb_hold off
xtitle('Bending Moment Diagram',"Span","Bending Moment")
//Result

printf('The value of reactions are R_l=%fN and R_r=%fN\n',R_l,R_r)
printf('The point of maximum bending moment is %f meters from left support nad maximum bending moment is %fN-m\n',a,M_max)
printf('The bending moment and shear force diagrams have been plotted')