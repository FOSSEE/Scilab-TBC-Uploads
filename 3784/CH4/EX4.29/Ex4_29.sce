clc
//Variable Initialisation
Ra=0.08//Armature resistance in ohm
Rb=1.5
Rf=12
N=500//Rated Speed of Motor in rpm
//Solution
If0=poly(0,'If0')
Eb0=poly(0,'Eb0')

If=[4.16,6.2,8.33,10.5,12.5,14.6,16.6,18.8,20]
Eb=[41.6,61.2,75,85,92,96.6,101,105,125]
W=2*%pi*N/60
Ia=((Rb+Rf)/Rb)*If0
K=Eb0*(1/W)
If1=12.6
Eb1=102.2
for If0=If1
    disp(Ia)
end
for Eb0=Eb1
    disp(K)
end
If2=12.6
K2=1.75
Eb2=102.2
K1=Eb2*(1/W)
Ia2=9*If2
Eb3=(If2*Rf)+(Ia2*Ra)//Wrongly calculated in book
N2=Eb3*60/(K1*2*%pi)
printf('\n\n Motor Speed at which load is hold by motor=%0.1f rpm\n\n',N2)//The answer provided in the textbook is wrong
