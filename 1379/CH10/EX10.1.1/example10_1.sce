

//example 10.1
clc; funcprot(0);
clf()
//exapple 10.1 
// Initialization of Variable
t=[0 0.5 1 2 3 4 5 6 7 8 9 10];//time
h=[1.10 1.03 .96 .82 .68 .54 .42 .35 .31 .28 .27 .27];
Cl=[0 0 0 0 0 0 0 0 0 0 0];
m=0.05;
V=1/1000;//volume
//calculations
Co=m/V;//concentration at t=0
v(1)=(h(1)-h(2))/(t(2)-t(1));
Cl(1)=Co;
for i=2:11
  
        v(i)=(h(i-1)-h(i+1))/(t(i+1)-t(i-1));//slope or settling velocity
        Cl(i)=Co*h(1)/(h(i)+v(i)*t(i));

    
end
plot(t,h,'r--d');
clf();
plot(Cl,v,'r->');
xtitle("Concentration vs Settling veocity" , "Concentration(kg/m^3)" , "Settling velocity (m/h)");

