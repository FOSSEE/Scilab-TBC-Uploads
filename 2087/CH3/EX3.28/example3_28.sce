

//example 3.28
//calculate reservior capacity
clc;
//given
Ar=4000;                 //culturable commanded area
CL=0.25;                //canal loss
RL=0.15;                 //reservior loss
B=[120 360 180 120 120];  //base period
D=[1800 1700 1400 800 700];//duty of water
I=[20 20 10 15 15];       //intensity of irrigation
for i=1:5
    A(i)=Ar*I(i)/10;     //area under crop
end
for i=1:5
    Q(i)=A(i)/D(i);        //discharge required
end
for i=1:5
    V(i)=8.64D4*Q(i)*B(i);     //quantity of water
end
s=0;
for i=1:5
    s=s+V(i);
end
SC=round(s/((1-CL)*(1-RL)*1000000));
mprintf("Storage capacity=%iD+06 cubic metre.",SC);

