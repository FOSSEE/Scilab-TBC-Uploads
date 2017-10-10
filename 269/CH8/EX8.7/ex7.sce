s=%s
Max_Limit = 10;
h = ones(1,Max_Limit);
N2 =0:length(h)-1;
for t = 1: Max_Limit
    x(t)= exp(-(t -1));
end
N1 =0:length(x)-1;
y = convol(x,h)-1;
N = 0:length(x)+ length(h)-2;
figure
a= gca();
plot2d (N2 ,h)
xtitle ( ' Impul s e Re spons e ' , ' t ' , ' h ( t ) ' );
a. thickness = 2;
figure
a= gca ();
plot2d (N1 ,x)
xtitle ( ' Input Re spons e ' , ' t ' , ' x ( t ) ' );
a. thickness = 2;
figure
a= gca ();
plot2d (N(1: Max_Limit ),y (1: Max_Limit ))
xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t ) ' );
a. thickness = 2;
