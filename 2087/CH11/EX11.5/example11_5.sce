

//example 11.5
//design oggy spillway for concrete gravity dam
clc;funcprot(0);
//given
rbl=250;        //avarage river bed level
rlc=350;        //R.L of spillway crest
s=0.75;         //slope on downstream side
Q=6500;         //discharge
L=5*9;          //length of spillway
Cd=2.2;         //coefficient of discharge
t=2;            //thickness of each pier

//step 1. computation of design head
H=(Q/(Cd*L))^(2/3);
P=rlc-rbl;

//P/H=6.15,which is<1.33;it is a high overflow spillway

//H+P/H=7.15>1.7; hence discharge coefficient is not affected by downstream apron interface

Kp=0.01;Ka=0.1;N=4;
He=17.5;                //assumed
Le=L-2*(N*Kp+Ka)*He;
He1=(Q/(Cd*Le))^(2/3);
He1=round(He1*100)/100;
//He1 is almost equal to He
mprintf("crest profile will be designed for Hd=%f m.",He1);

//step 2. determination of d/s profile

//equating the slope of d/s side and derivative of profile equation suggested by WES
x=27.03;
y=0.04372*x^1.85;
mprintf("\n\ndownstream profile:");
x=[1:1:26]
for i=1:26
    y(i)=0.04372*x(i)^1.85;
    y(i)=round(y(i)*1000)/1000;
end
mprintf("\nx          y");
for i=1:26
    mprintf("\n%i          %f",x(i),y(i));
end
mprintf("\n27.03          19.48");


//step 3. determination of u/s profile
// cosidering equation for vertical u/s face and Hd=17.58

mprintf("\n\nupstream profile:");
x=[-0.5 -0.1 -1.5 -2.0 -3.0 -4.0 -4.75];
for i=1:7
    y(i)=0.0633*(x(i)+4.7466)^1.85+2.2151-1.2643*(x(i)+4.7466)^0.625;
    y(i)=round(y(i)*1000)/1000;
end
mprintf("\nx                    y");
for i=1:7
    mprintf("\n%f          %f",x(i),y(i));
end

//step 4.design of d/s bucket

R=P/4;
mprintf("\n\nradius of bucket=%i m.",R);
mprintf("\nbucket will subtend angle of 60 degree at the centre.");
