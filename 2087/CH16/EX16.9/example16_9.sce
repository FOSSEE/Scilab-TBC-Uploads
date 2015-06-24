

//example 16.9
//decide whether it is economically feasible to provide canal lining
clc;funcprot(0);
//given
li=2.5;               //seepage loss for lined channel
p1=25;                //wetted perimeter for lined channel
t=12;                 //thickness of concrete lining
lf=0.02;              //seepage loss for unlined channel
p2=20;                //wetted perimeter for unlined channel

//assume 1 km length of canal
//annual benifit

//(1).seepage
A1=p1*1000;             //area of wetted perimeter
li=li*p1/1000;          //seepage loss
A2=p2*1000;            //area of wetted perimmeter for unlined channel
lf=p2*lf/1000;        //seepage loss for unlined channel
s=li-lf;               //saving in water loss
a1=s*p1*100000;        //annual revenue saved

//(2)maintainence
a2=0.4*25000;         //saving in maintainance cost
ts=a1+a2;             //total annual benifit

//annual cost
A1=p2*1000;           //area of lining for unlinrd canal
C=100*A1;             //cost of lining
//interest rate is 6%
i=0.06;
N=50;
a=(C*i*(i+1)^N)/((1+i)^N-1);  //annual cost of lining or capital recovery factor
bcr=ts/a;                 //benifit cost ratio
bcr=round(bcr*1000)/1000;
mprintf("\nBenifit cost ratio=%f.",bcr);
//as bcr>1
mprintf(" ;Since it is more than 1.\nHence, it is economically justifiable. ");
