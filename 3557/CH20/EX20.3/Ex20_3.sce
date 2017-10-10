//Example 20.3//
a=1.21;//dollar/kg
b=0.70;// fabrication yield rate
phenolic=a/b
mprintf("phenolic =$ %f /kg ",phenolic)
a1=4.30;//dollar/kg
b1=0.95;// fabrication yield rate
polyester=a1/b1
mprintf("\npolyester $%f /kg",polyester)
//Then the net materials cost per part is
c=2.9;//g/part
d=1;//kg //kilogram
e=1000;//g //gram
p=phenolic*c*d/e
mprintf("\np = $%f /part =0.5cents/part",p)
py=polyester*c*d/e
mprintf("\npy =$%f /part =1.3cents/part",py)
a1=10;//dollar per hour/operator
b1=1;//operator
c1=35;//s/cycle
d1=4;//parts/cycle
e1=1;//hour
f1=3600;//s //seconds
p1=a1*b1*(c1/d1)*(e1/f1)
mprintf("\np1 = %f /part  = 2.4cents/part",p1)
c2=20;//s/cycle
g1=5;//operator
py1=a1*(b1/g1)*(c2/d1)*(e1/f1)
mprintf("\npy1 =$%f /part =0.3 cents/part",py1)
//The total cost (materials+labour)is then
a3=0.5;//cents/parts
b3=2.4;//cents/parts
phenolic1=a3+b3
mprintf("\nphenolic1 = %f cents/part",phenolic1)
a4=1.3;//cents/part
b4=0.3;//cents/part
polyester2=(a4+b4);// /part
mprintf("\npolyester2 = %f cents/part",polyester2)
//the greatly reduced labor cost have given a net economic advantage to the polyster

