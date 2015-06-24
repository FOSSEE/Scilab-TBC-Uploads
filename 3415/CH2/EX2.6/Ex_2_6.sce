//fiber optic communications by joseph c. palais
//example 2.6
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
spotsize=1e-3//spot size
lambda=0.82e-6//wave length
d1=10//distance in m
d2=1e3//distance in m
d3=10e3//distance in m
//to find
div1=2*lambda/(%pi*spotsize)
wo1=lambda*d1/(%pi*spotsize)
wo2=lambda*d2/(%pi*spotsize)
wo3=lambda*d3/(%pi*spotsize)
disp("mm",wo1*1e3,"spot size1=","mm",wo2*1e3,"spot size1=","mm",wo3*1e3,"spot size1=")
