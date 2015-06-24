
//plotting graph for i1
theta=linspace(0,2*%pi,100)
i1=50*sin(theta)+50*sin(theta-%pi/4)
plot(theta,i1)
//plotting graph for i2
theta=linspace(0,2*%pi,100)
i2=50*cos(theta)+50*cos(theta+%pi/4)
plot(theta,i2,"o")
//plotting graph for i3
i3=50*cos(theta)-20*sin(theta)
plot(theta,i3,"-*")
xtitle("Graphs of i1(-),i2(oo) and i3(-*)","theta","current")
//round off error while plotting graphs
