//Chapter 3, Example 3.12, page 105
clc


//Initialisation
L=13200                                       //L parameter in m
H=10240                                       //H parameter 
Re=6370000                                    //actual redius of earth
ht=30                                         //height in m
hr=20                                         // in m
re1=8453000                                   // in metre
h1=30000                                     // in metre                        
h2=20000                                    //in metre
dt1=22.5
f=10*10**9                                  //frequency in Hz
c=3*10**8                                   //speed of light
d=30000                                     //distance in m
pt=30                                       //transmitter antenna power
gt=40                                       //transmitter antenna gain
gr=40                                       //receiver antenna gain                  
pi=3.14
F3=-3
H=-34
D=0.75

//Calculation
dt=sqrt(2*re1*ht)
X=3*dt*L**-1
Z1=h1*H**-1
Z2=h2*H**-1
vx=10**-3.5                              //from fig 3.26
z1=10**0.95                              //from fig 3.27
z2=10**0.65                              //from fig 3.27

//for d=3dt
lv=20*log10(vx)
lz1=20*log10(z1)
lz2=20*log10(z2)
F=(lv+lz1+lz2)*20**-1
F1=10**(F)
F11=20*log10(F1)
X1=2*dt*L**-1
d3=3
f3=-F11

vx1=10**-2.35                             //from fig 3.26
lv1=20*log10(vx1)

//for d=2dt
F4=1+D
F5=20*log10(F4)
d2=2
f2=-F5


//for d=1.1dt
F6=sqrt(1+D**2)
F7=20*log10(F6)
d11=1.1
f11=-F7

//for d=dt
d1=1
f1=0.2

//for plotting graph in terms of points



for N=0:1:5
    a=plot(1,0.2,'-o')
    a1=plot(1.1,-1.9,'-o')
    a2=plot(2,-4.8,'-o')
    a3=plot(3,-38,'-o')
end

title('Path gain F','fontsize',5);
xlabel("d/dt", "fontsize", 3);
ylabel("20log(F)(dB)", "fontsize", 3, "color", "blue");
xstring(1,2,"d/dt",0,0);
xstring(1.2,0.7,"1.1d/dt",0,0);
xstring(2,-0.7,"2d/dt",0,0);
xstring(2.86,-35,"3d/dt",0,0);
    

   
h=c*f**-1                                                                       //wavelength
Pr=pt+gt+gr+H+F3-10*log10(4*pi*d**2)                                  //Received signal power


//Results
printf("(1) Effective receiver path gain F = %.4f",F11)
printf("\n(2) Path gain F plot is shown")
printf("\n(3) Received signal power Pr = %.1f dBm",Pr)
