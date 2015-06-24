//Chapter 3, Problem 11, Figure 3.16(a), 3.18
clc
Zs=50+%i*0                      //impedance in ohm
Zl=100+%i*0                     //impedance in ohm

//using one quarter wave transformer in the circuit of figure 3.16(a)
Z0=sqrt(Zs*Zl)

//Use two quarter-wave transformers as in Figure 3.18
Z0t=sqrt(Zl/Zs)
Z0t2=60
Z0t1=Z0t2*Z0t

//using table 3.3
x=[0.6,0.8,1.0,1.2,1.4]
y=[-13.83,-19.28,-60,-19.28,-13.83]
clf; 
x1=[0.6,0.8,1.0,1.2,1.4]
y1=[-18.81,-32.09,-38.69,-32.09,-18.81]
plot(x,y,".r")
plot(x1,y1,".b")
legend("one h/4","Two h/4")

xtitle("reflection coefficient vs frequency","frequency (GHz)","Reflection coefficient (dB)");
printf("(a) Matching network using one λ/4 transformer,\n\t Z0 = %.2f ohm\n\n",Z0)
printf("(b) Matching network using two λ/4 transformers,\n Ratio of Z0t1 and Z0t2 = %.3f\n",Z0t)
printf("If I choose a value of 60 ohm for Z0t2, then Z0t1 = %.2f ohm\n\n",Z0t1)

