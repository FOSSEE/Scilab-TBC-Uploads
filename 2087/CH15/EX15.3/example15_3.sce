

//example 15.3
//design and prepare the longitudnal section;schedule of area statistics and channel dimension of irrigation channel
clc;funcprot(0);
//given
dl=157.7;               //datum level
fsl=157;               //full supply level of parent channel
bl=156;                //bed level of parent channel
kor_r=4;               //kor period of rabi
kor_k=2.5;             //kor period of kharif
kord_r=13.4;           //kor depth of rabi
kord_k=19;             //kor depth of kharif
s=0.5;                 //side slope
m=1;                   //critical velocity ratio
N=0.0225;              //Kutter n
qo_r=8.64*7*kor_r*100/kord_r;  //outlet discharge for rabi(calculation is wrong in book)
qo_k=8.64*7*kor_k*100/kord_k;  //outlet discharge for kharif(calculation is wrong in  book)
ca=16000;               //culturable commanded area
Ir=0.3;                //intensity of irrigation in rabi
Ik=0.125;              //intensity of irrigation in rabi
Ar=Ir*ca;              //area under rabi
Ak=ca*Ik;              //area under kharif
q_r=Ar/qo_r;
q_k=Ak/qo_k;
q_r=round(q_r*100)/100;
q_k=round(q_k*100)/100;
mprintf("discharge neede for rabi crop=%f cumecs.",q_r);
mprintf("\ndischarge neede for kharif crop=%f cumecs.",q_k);
mprintf("\noutlet discharge factor adopted=%i hectares per cumecs.",qo_r);
//at km 5
ca=8000;          //culturable area
Ar=Ir*ca;              //area under rabi
q_r=Ar/qo_r;
l=0.5               //total loss after 5 km
q=q_r+l;             //total discharge
dq=1.1*q;            //desigm discharge
S=1/4000;           //slope
B=[5.5 4.9 4.55];   //Bed width
D=[0.73 0.79 0.84]; //water depth
Vo=[0.448 0.472 0.488];  //critical velocity
mprintf("\n\nBed width     water depth      area        velocity      critical velocity    C.V.R");
for i=1:3
    A(i)=B(i)*D(i)+D(i)^2/2;
    V(i)=dq/A(i);
    m(i)=V(i)/Vo(i);
    A(i)=round(A(i)*100)/100;
    V(i)=round(V(i)*1000)/1000;
    m(i)=round(m(i)*100)/100;
    mprintf("\n%f       %f      %f      %f       %f           %f",B(i),D(i),A(i),V(i),Vo(i),m(i));
end
B=4.55;D=0.84;
mprintf("\nhence take B=%f .; D=%f m.",B,D);
//at km 4
q=round(q*100)/100;
mprintf("\ndischarge at 5 km=%f cumecs.",q);
ca=10000;          //culturable area
Ar=Ir*ca;              //area under rabi
q_r=Ar/qo_r;
l=0.5               //total loss below 5 km
P=B+D*5^0.5;        //wetted perimeter
l1=P*1000*2/1000000;  //loss between 5 km and 4km
l2=l1+l;
q=q_r+l2;
dq=1.1*q;
q=round(q*1000)/1000;
mprintf("\ndischarge at 4 km =%f cumecs",q);
mprintf("\nother discharge are calculated and are tabulated as:");
x=[0:1:5];
A1=[4800 4200 3600 3300 3000 2400];
A2=[2000 1750 1500 1375 1250 1000];
S=[22.5 22.5 22.5 24 24 25];
B=[5.5 5.2 4.85 4.7 4.55 4.55];
D=[1.04 1.007 0.975 0.945 0.915 0.840];
dq=[3.56 3.17 2.8 2.6 2.4 2.02];
V=[0.570 0.555 0.538 0.530 0.521 0.484];
m=[1.015 1 1 1 1 0.992];
mprintf("\n\nBelow km     area to irrigate rabi       area to irrigate kharif     bed slope        bed width          water depth         design discharge      velocity        C.V.R");
for i=1:6
    mprintf("\n%i               %i                         %i                   %f           %f            %f            %f           %f        %f",x(i),A1(i),A2(i),S(i),B(i),D(i),dq(i),V(i),m(i));
end


