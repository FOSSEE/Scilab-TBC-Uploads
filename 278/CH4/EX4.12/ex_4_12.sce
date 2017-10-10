
clc
//soluton
//given
Ds=18//mm//diameter of steel
Dc1=24//mm//inner  diameter of copper rod initially
Dc2=40//mm//outer diametr of copper
Fs=10//N/mm^2//stress in steel rod
pi=3.14
As=(pi*Ds^2)/4//mm^2//area of steel rod
Ac=(pi*(Dc2^2-Dc1^2))/4//mm^2//area of copper rod
//since tensile load on steel rod is equal to compressive load on copper rod,therefore
//Fs*As=Fc*Ac,therefore
Fc=Fs*As/Ac//stress in copper rod//N/mm^2
//when copper rod is reduced outside diametr changes to 40-1.5*2=37mm,therefore new area is
Ac1=(pi*(37^2-24^2))//mm^2
//cross section of other half remain same//if Ac2 is the area of remainder then Ac2=Ac
//let Fc1 be stress in reduced section,Fc2 be stress in remainder ,Fs1 stress in rod aftre turning
//since load on copper tube is equal to load on steel tube, therefore Ac1*Fc1=Ac2*Fc2=As*Fs1
//from above equations Fc1=0.41*Fs1,Fc2=0.32*Fs1
//let L be the length of steela nd copper  rod ,since total change in length is equal to change inlength of rduced section before and aftr turning adn change in length of remainder section beofre and aftre turning
//dl=dl1+dl2
//(Fs-Fs1)*L/Es=(Fc1-Fc)*L/(2*Ec)+(Fc2-Fc)*(L)/(2*Ec)
//given Es=2Ec
//10-Fs1=0.41*Fs1-3.16+0.32*Fs1-3.16
Fs1=(10+3.16+3.16)/(1+0.41+0.32)
printf("the stress in the rod is,%f N/mm^2",Fs1)