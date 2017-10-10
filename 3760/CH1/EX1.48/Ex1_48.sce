clc;
P=400000; // rated KVA of transformer
P1=11000; // rated primary voltage
S2=6600; // rated secondary voltage
v1=360; // voltage recorded during short circuit of l v winding for first transformer
p1=3025; // power dissipated during short circuit of l v winding for first transformer
v2=400; // voltage recorded during short circuit of l v winding for second transformer
p2=3200; // power dissipated during short circuit of l v winding for second transformer
v3=480; // voltage recorded during short circuit test of l v winding third transformer
p3=3250; // power dissipated during short circuit of l v winding for third transformer
l1=(P+(v1/v2)*P+(v1/v3)*P)/1000; 
printf('The greatest load that can be put on the transformers is %f KVA\n',l1);
is=P/S2; // secondary rated current
// transformer 1 is fully loaded , its carries full load current
re2=p1/is^2; // total resistance referred to secondary side
vd=is*re2; // voltage drop for transformer 1
E2=S2-vd; 
printf('Secondary terminal voltage is %f v',E2);
